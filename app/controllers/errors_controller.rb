class ErrorsController < ApplicationController
  rescue_from StandardError, with: lambda { |e| render_error(e) }

  def render_error(exception)
    status_code = ActionDispatch::ExceptionWrapper.new(env, exception).status_code
    render json: {message: exception.message}, status: status_code
  end
end