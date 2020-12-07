class CreateAddinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :addinfos do |t|
      t.string :add_text1
      t.string :add_text2
      t.string :add_text3
      t.string :add_text4
      t.string :add_text5
      t.string :add_text6
      t.string :add_text7
      t.string :add_text8
      t.string :add_text9
      t.string :add_text10
      t.references :client,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
