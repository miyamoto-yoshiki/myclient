class Addinfo < ApplicationRecord
  belongs_to :user

  

  validates :client_id, presence: true
end
