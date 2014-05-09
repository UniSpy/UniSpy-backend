class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  def authenticate_with_token
    token = request.headers['auth-token']
    user = Session.authenticate_with token
    render json: {}, status: :unauthorized unless user
  end
end
