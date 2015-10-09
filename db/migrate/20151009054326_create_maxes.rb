class CreateMaxes < ActiveRecord::Migration
  def change
    create_table :maxes do |t|
      t.integer :max_id
      t.integer :workout_id
      t.string :name
      t.string :description
      t.integer :rep
      t.integer :weight
      t.integer :set
      t.string :image

      t.timestamps null: false
    end
  end
end
