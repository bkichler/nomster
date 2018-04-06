class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user_comments = @user.comments
    @user_places = @user.places
  end
end
