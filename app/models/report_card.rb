class ReportCard < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id", optional: true
  belongs_to :schoolyear_and_schoolterm, class_name: "SchoolyearAndSchoolterm", foreign_key: "schoolyear_and_schoolterm_id", optional: true
  validates :user_id, presence: true
  validates :schoolyear_and_schoolterm_id, presence: true
end
