class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :last_name,       null: false
      t.string :first_name,      null: false
      t.string :last_kana,       null: false
      t.string :first_kana,      null: false
      t.string :phone_num,       null: false
      t.string :email,           null: false
      t.date :birthday
      t.string :post_num
      t.string :prefecture
      t.string :city
      t.string :details
      t.string :build_num
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
