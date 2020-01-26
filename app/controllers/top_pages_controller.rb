class TopPagesController < ApplicationController
  def home
    @user = current_user
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
  end

  def help
  end
end
