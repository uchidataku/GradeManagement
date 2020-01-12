class PersonalAchievementTestsController < ApplicationController

  def create

  end
  
  def new
    @testpoint = current_user.personal_achievement_tests.build
  end
end
