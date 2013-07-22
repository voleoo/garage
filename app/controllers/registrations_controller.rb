class RegistrationsController < ApplicationController
	def new
    @registration = Authentication.new
  end

  def create
    @registration = Authentication.new(params[:registration])
    if @registration.save
      redirect_to root_url, :notice => "Signed up! #{@registration.id}"
    else
      render "new"
    end
  end

  def index
    redirect_to action: 'new', status: 302
  end
end
