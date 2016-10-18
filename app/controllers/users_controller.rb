class UsersController < ApplicationController
  # devise_for :users

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def vote
  	@user = User.find(params[:id])
  end
end
