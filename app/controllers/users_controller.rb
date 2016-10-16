class UsersController < ApplicationController
  # devise_for :users

  def index
  	@users = User.all
  end

  def show
  	@users = User.find(params[:id])
  end

  def vote
  	@users = User.find(params[:id])
  end
end
