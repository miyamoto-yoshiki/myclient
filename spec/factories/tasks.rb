FactoryBot.define do
  factory :task do
    task { 'テスト' }
    date { 2020-12-10 }
    client_id { 1 }
    redirect { 0 }
  end
end