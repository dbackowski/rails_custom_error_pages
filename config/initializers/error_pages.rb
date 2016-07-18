Rails.application.config.exceptions_app = ->(env) { RailsCustomErrorPages::ErrorsController.action(:show).call(env) }
