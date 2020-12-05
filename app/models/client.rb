class Client < ApplicationRecord
  default_scope -> { order(last_kana: :asc) }

  
  belongs_to :user

  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: '全角文字を使用してください' } do
    validates :last_name
    validates :first_name
  end
  with_options presence: true, format: { with: /\A[ァ-ン]+\z/, message: '全角カタカナを使用してください' } do
    validates :last_kana
    validates :first_kana
  end

  validates :phone_num,     format: { with: /\A[0-9]+\z/ } , length: { maximum: 11}
  validates :email, uniqueness: true, presence: true
  validates :post_num,      format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
end
