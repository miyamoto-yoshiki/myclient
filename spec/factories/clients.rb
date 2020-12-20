FactoryBot.define do
  factory :client do
    last_name { '宮本' }
    first_name { '良輝' }
    last_kana { 'ミヤモト' }
    first_kana { 'ヨシキ' }
    phon_num { '00011110000'}
    email { Faker::Internet.free_email }
  end
end
