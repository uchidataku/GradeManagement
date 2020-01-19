class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @personal_achievement_test = @user.personal_achievement_tests.all
  end
end
