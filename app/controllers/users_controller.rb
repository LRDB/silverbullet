class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Account created."
      redirect_to @user
    else
      flash[:danger] = @user.errors.full_messages
      redirect_to signup_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,
                                 :password_confirmation)
  end

end
