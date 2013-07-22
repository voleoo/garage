class AuthenticationsController < ApplicationController
  def new
  end

  def create
    authentication = Authentication.find_by_email(params[:email])
    if authentication && authentication.authenticate(params[:password])
      session[:user_id] = authentication.id
      redirect_to root_url, :notice => "Logged in! #{authentication.id} #{session[:user_id]}"
    else
      flash.now.alert = "Invalid email or password"
      render "index"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
