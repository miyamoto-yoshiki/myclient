class Addinfo < ApplicationRecord
  belongs_to :client, optional: true

  with_options length: { maximum: 24} do
    validates :add_text1
    validates :add_text2
    validates :add_text3
    validates :add_text4
    validates :add_text5
    validates :add_text6
    validates :add_text7
    validates :add_text8
    validates :add_text9
    validates :add_text10
  end
end
