class CustomersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy]
  # before_action :authorization_check, except: []  # admin olmayan kullanıcı hiç bir şey yapamaz
  def index
    # @users = User.paginate(:page => params[:page], :per_page => 1)
    @users = User.all 
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.find(params[:user_id])
    @user.profile_photo.attach(params[:profile_photo])
    render json: { profile_photo_url: user.profile_photo.url }
  end

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to user_path
  end

  def upload_profile_photo
    current_user.update_attributes(profile_photo: params[:profile_photo])
    redirect_to profile_path
  end
  
end
