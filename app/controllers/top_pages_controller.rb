class TopPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      @personal_achievement_test = @user.personal_achievement_tests.all
      @report_cards = @user.report_cards.all
    end
  end
end
