class CreateExercise < ActiveRecord::Migration[4.2]
  def change
  create_table :exercises do |t|
  #id
    t.string :name
    t.integer :sets
    t.integer :reps
    t.integer :duration
    t.string :category
    t.integer :workout_id
    
    end
  end
end
