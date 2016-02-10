class UsersController < ApplicationController

 skip_before_action :ensure_current_user

  def new
    @user = User.new
  end

  def create
    # FOR NOW
    flash[:notice] = "Registration not yet implemented, sorry"
    redirect_to '/users/new'

    # FOR LATER
    # @user = User.new(user_params)
    # if @user.save
    #   flash[:notice] = "account creation successful"
    #   redirect_to '/users/new'
    # else
    #   render :new
    # end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email)
  end





end
