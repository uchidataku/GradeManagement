class PersonalAchievementTestsController < ApplicationController

  def create
    @testpoint = current_user.personal_achievement_tests.new(testpoint_params)
    if @testpoint.save
      flash[:success] = "定期考査の結果を登録しました"
      redirect_to current_user
    else
      flash[:danger] = "登録できませんでした"
      redirect_to new_user_personal_achievement_test_path
    end
  end

  def new
    @user = current_user
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
    @testpoint = PersonalAchievementTest.new
  end

  def show
    @user = User.find(params[:user_id])
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
    @testpoint = PersonalAchievementTest.find(params[:id])
  end

  private
    def testpoint_params
      params.require(:personal_achievement_test).permit(:periodical_inspection_id,
                                                        :japanese,
                                                        :mathematics,
                                                        :english,
                                                        :science,
                                                        :social_studies,
                                                        :five_subjects_total,
                                                        :music,
                                                        :fine_arts,
                                                        :technical_arts_and_home_economics,
                                                        :health_and_physical_education,
                                                        :nine_subjects_total,
                                                        :average_japanese,
                                                        :average_mathematics,
                                                        :average_english,
                                                        :average_science,
                                                        :average_social_studies,
                                                        :average_five_subjects_total,
                                                        :average_music,
                                                        :average_fine_arts,
                                                        :average_technical_arts_and_home_economics,
                                                        :average_health_and_physical_education,
                                                        :average_nine_subjects_total
      )
    end
end
