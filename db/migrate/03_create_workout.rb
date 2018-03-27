class CreateWorkout < ActiveRecord::Migration[4.2]
  def change
    #id
  create_table :workouts do |t|
    t.string :name
    t.integer :duration
    t.text :description
    t.integer :workout_id
    end
  end
end
