class SessionsController < ApplicationController
  def create
  	puts "this is the data type:"
  	puts env["omniauth.auth"].class
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  def index
  	render "facebook"
  end
end