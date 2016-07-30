module RailsCustomErrorPages
  class ErrorsController < ApplicationController
    layout false

    def show
      @exception       = env['action_dispatch.exception']
      @status_code     = ActionDispatch::ExceptionWrapper.new(env, @exception).status_code
      @rescue_response = ActionDispatch::ExceptionWrapper.rescue_responses[@exception.class.name]

      render :show, status: @status_code
    end
  end
end
