class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Welcome to Guru!'
      redirect_to cookies.delete(:request_path) || root_path
    else
      flash.now[:alert] = "Are you a Guru? Verify your email and password"
      render :new
    end
  end

end