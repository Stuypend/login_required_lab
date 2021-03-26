class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def new

  end

  def current_user
    byebug
    if(params[:username] && params[:username] != "")
      session[:username] = params[:username]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
  end
end
