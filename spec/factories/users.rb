FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    password = '1a' + Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
    last_name { '宮本' }
    first_name { '良輝' }
    last_kana { 'ミヤモト' }
    first_kana { 'ヨシキ' }
  end
end
