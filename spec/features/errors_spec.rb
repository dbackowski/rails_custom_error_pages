require 'spec_helper'

feature 'Errors pages' do
  def handle_errors
    env_config = Rails.application.env_config

    show_exceptions = env_config['action_dispatch.show_exceptions']
    local_requests = env_config['action_dispatch.show_detailed_exceptions']

    # Disables Rails built-in error reports, so our custom error application
    # can handle them and render it's own templates. This overrides the cached
    # setting in Rails.application.config.consider_all_requests_local
    env_config['action_dispatch.show_detailed_exceptions'] = false

    # Render exception templates instead of raising exceptions.
    # This is the cached setting for
    # Rails.application.config.action_dispatch.show_exceptions
    env_config['action_dispatch.show_exceptions'] = true

    yield

    env_config['action_dispatch.show_exceptions'] = show_exceptions
    env_config['action_dispatch.show_detailed_exceptions'] = local_requests
  end

  around(:each) do |example|
    handle_errors(&example)
  end

  it 'renders 404 error page' do
    allow_any_instance_of(ErrorsController).to receive(:index).and_raise(ActiveRecord::RecordNotFound)
    visit '/errors'

    expect(page.status_code).to eq(404)
    expect(page).to have_content('404 The page you were looking for doesn\'t exist.')
  end

  it 'renders 422 error page' do
    allow_any_instance_of(ErrorsController).to receive(:index).and_raise(ActionController::InvalidAuthenticityToken)
    visit '/errors'

    expect(page.status_code).to eq(422)
    expect(page).to have_content('422 The change you wanted was rejected.')
  end

  it 'renders 500 page' do
    allow_any_instance_of(ErrorsController).to receive(:index).and_raise()
    visit '/errors'

    expect(page.status_code).to eq(500)
    expect(page).to have_content('500 We\'re sorry, but something went wrong.')
  end
end
