class UsersController < ApplicationController
  before_action :set_user, only: %i[show user_profile_card]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def user_profile_card
    render(UserProfileCardComponent.new(user: @user))
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
