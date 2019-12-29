class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :cram_schoolhouse, class_name: "CramSchoolhouse", foreign_key: "cram_schoolhouse_id"
end
