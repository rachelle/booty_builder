class CreateMins < ActiveRecord::Migration
  def change
    create_table :mins do |t|
      t.integer :min_id
      t.integer :workout_id
      t.string :name
      t.string :description
      t.string :image
      t.integer :rep
      t.integer :set
      t.integer :weight

      t.timestamps null: false
    end
  end
end
