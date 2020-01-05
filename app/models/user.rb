class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :cram_schoolhouse, class_name: "CramSchoolhouse", foreign_key: "cram_schoolhouse_id", optional: true
  belongs_to :school_year, class_name: "SchoolYear", foreign_key: "school_year_id", optional: true
  has_many :personal_achievement_tests
  validates :firstname_kanji, presence: true, length: { maximum: 50 }
  validates :lastname_kanji, presence: true, length: { maximum: 50 }
  validates :firstname_kana, presence: true, length: { maximum: 50 }
  validates :lastname_kana, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/ii
  validates :email, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :school_name, presence: true, length: { maximum: 50 }
  validates :school_year_id, presence: true

  def full_name_kanji
    "#{firstname_kanji} #{lastname_kanji}"
  end

  def full_name_kana
    "#{firstname_kana} #{lastname_kana}"
  end
end
