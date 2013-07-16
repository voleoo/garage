class UserController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def show
    @user = User.find(params[:id])
      render "show"
  end
end
