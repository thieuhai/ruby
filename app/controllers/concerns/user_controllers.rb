class UsersController < ApplicationController
  def show
    @user = User.find_by id: (params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t ".flash.success"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find_by id: (params[:id])
  end
end
