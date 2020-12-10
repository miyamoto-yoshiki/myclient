class Task < ApplicationRecord
  belongs_to :client

  validates :task, presence: true
  validates :date, presence: true
  validates :redirect, presence: true
end
