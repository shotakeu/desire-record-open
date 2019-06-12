class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.datetime :hour
      t.text :activity
      t.integer :desire_level
      t.integer :feeling_level
      t.text :comment
      t.date :date

      t.timestamps
      t.string :email
    end
  end
end
