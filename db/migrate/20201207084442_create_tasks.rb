class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.date :date, null: false
      t.references :client, null: false, foreign_key: true
      t.integer :redirect
      t.timestamps
    end
  end
end
