class Task < ApplicationRecord
  validates :task, presence: true
  validates :date, presence: true

  
end
