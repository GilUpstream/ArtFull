class UsersController < ApplicationController

  def index
  end


  def show
    @user = User.find(params[:id])
    @followed_user_checkins = @user.followed_checkins
  end

end

