class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @user_comments = current_user.comments
    @user_places = current_user.places
  end

end
