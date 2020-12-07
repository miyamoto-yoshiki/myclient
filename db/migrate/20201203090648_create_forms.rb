class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string     :f_name1
      t.string     :f_name2
      t.string     :f_name3
      t.string     :f_name4
      t.string     :f_name5
      t.string     :f_name6
      t.string     :f_name7
      t.string     :f_name8
      t.string     :f_name9
      t.string     :f_name10
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
