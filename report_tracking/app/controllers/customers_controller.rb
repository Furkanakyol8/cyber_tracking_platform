class CustomersController < ApplicationController

  # before_action :authorization_check, except: []  # admin olmayan kullanıcı hiç bir şey yapamaz
  def index
    @users = User.all
  end
end
