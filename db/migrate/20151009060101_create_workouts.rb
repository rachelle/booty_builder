class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :min_id
      t.integer :max_id
      t.integer :med_id
      t.integer :workout_id
      t.string :image
      t.integer :rep
      t.integer :weight
      t.integer :set
      t.string :description

      t.timestamps null: false
    end
  end
end
