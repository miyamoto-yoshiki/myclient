class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.date :date, null: false
      t.integer :redirect, null: false
      t.references :client, null: false, foreign_key: true
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
