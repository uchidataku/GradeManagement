class PersonalAchievementTest < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :periodical_inspection, class_name: "PeriodicalInspection", foreign_key: "periodical_inspection_id", optional: true
  validates :user_id, presence: true
  validates :periodical_inspection_id, presence: true
  validates :picture, presence: true
  validate :picture_size

  private
    def picture_size
      if picture
        if picture.size > 5.megabytes
          errors.add(:picture, "5MB以上は登録できません")
        end
      end
    end
end

