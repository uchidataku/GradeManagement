class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
  end

  def index
    @user = current_user
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
    @users = User.paginate(page: params[:page], per_page: 10)
  end
end
