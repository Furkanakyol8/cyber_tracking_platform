class CustomersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy]
  # before_action :authorization_check, except: []  # admin olmayan kullanıcı hiç bir şey yapamaz
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to user_path
  end
end
