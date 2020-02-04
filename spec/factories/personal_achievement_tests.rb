FactoryBot.define do
  factory :personal_achievement_test do
    user_id { 1 }
    periodical_inspection_id { 1 }
    japanese { 80 }
    mathematics { 80 }
    english { 80 }
    science { 80 }
    social_studies { 80 }
    music { 80 }
    fine_arts { 80 }
    technical_arts_and_home_economics { 80 }
    health_and_physical_education { 80 }
    five_subjects_total { 400 }
    nine_subjects_total { 720 }
    average_japanese { 60 }
    average_mathematics { 60 }
    average_english { 60 }
    average_science { 60 }
    average_social_studies { 60 }
    average_music { 60 }
    average_fine_arts { 60 }
    average_technical_arts_and_home_economics { 60 }
    average_health_and_physical_education { 60 }
    average_five_subjects_total { 360 }
    average_nine_subjects_total { 540 }
  end
end
