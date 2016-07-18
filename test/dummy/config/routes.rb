Rails.application.routes.draw do

  mount RailsCustomErrorPages::Engine => "/rails_custom_error_pages"
end
