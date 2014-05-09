class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update]
  before_action :authenticate_with_token, only:[:index]

  # GET /sessions
  # GET /sessions.json
  def index
    authenticate_with_token
    @sessions = Session.all
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # POST /sessions
  # POST /sessions.json
  def create

    user = User.find_by user:params[:user]
    auth = user.authenticate(params[:password]) if user

    @session = Session.new(user:user)

    if auth and @session.save
      render json: @session.token
    else
      render json: @session.errors, status: :unprocessable_entity
    end

end
    def destroy
      token = request.headers['auth-token']
      s = Session.with token
      s.delete
      head :no_content
    end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:token, :user_id)
    end
  end
