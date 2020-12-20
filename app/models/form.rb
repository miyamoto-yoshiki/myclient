class Form < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options length: { maximum: 16} do
  validates :f_name1
  validates :f_name2
  validates :f_name3
  validates :f_name4
  validates :f_name5
  validates :f_name6
  validates :f_name7
  validates :f_name8
  validates :f_name9
  validates :f_name10
  end
end
