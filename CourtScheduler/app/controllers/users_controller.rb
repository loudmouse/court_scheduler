class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(person_params)
    if @user.save
      redirect_to @user
    else
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def person_params
    params.require(:user).permit(:name, :id)
  end
end
