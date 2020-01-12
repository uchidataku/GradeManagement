class PersonalAchievementTest < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :periodical_inspection, class_name: "PeriodicalInspection", foreign_key: "periodical_inspection_id", optional: true
end
