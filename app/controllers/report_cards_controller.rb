class ReportCardsController < ApplicationController

  def create
    @record = current_user.report_cards.new(record_params)
    if @record.save
      flash[:success] = "通知表の結果を登録しました"
      redirect_to current_user
    else
      flash[:danger] = "登録できませんでした"
    end
  end

  def new
    @user = current_user
    @personal_achievement_test = @user.personal_achievement_tests.all
    @report_cards = @user.report_cards.all
    @record = ReportCard.new
  end

  def show
  end

  private
   def record_params
     params.require(:report_card).permit(:schoolyear_and_schoolterm_id,
                                         :japanese,
                                         :ja_column1,
                                         :ja_column2,
                                         :ja_column3,
                                         :ja_column4,
                                         :ja_column5,
                                         :social_studies,
                                         :so_column1,
                                         :so_column2,
                                         :so_column3,
                                         :so_column4,
                                         :mathematics,
                                         :ma_column1,
                                         :ma_column2,
                                         :ma_column3,
                                         :ma_column4,
                                         :science,
                                         :sc_column1,
                                         :sc_column2,
                                         :sc_column3,
                                         :sc_column4,
                                         :music,
                                         :mu_column1,
                                         :mu_column2,
                                         :mu_column3,
                                         :mu_column4,
                                         :fine_arts,
                                         :fi_column1,
                                         :fi_column2,
                                         :fi_column3,
                                         :fi_column4,
                                         :health_and_physical_education,
                                         :he_column1,
                                         :he_column2,
                                         :he_column3,
                                         :he_column4,
                                         :technical_arts_and_home_economics,
                                         :te_column1,
                                         :te_column2,
                                         :te_column3,
                                         :te_column4,
                                         :english,
                                         :en_column1,
                                         :en_column2,
                                         :en_column3,
                                         :en_column4
     )
   end
end
