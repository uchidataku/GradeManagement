class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :cram_schoolhouse, class_name: "CramSchoolhouse", foreign_key: "cram_schoolhouse_id"
  validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/ii
  validates :email, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                uniqueness: { case_sensitive: false }
  validates :school_name, presence: true, length: { maximum: 50 }
  validates :school_year, presence: true
end
