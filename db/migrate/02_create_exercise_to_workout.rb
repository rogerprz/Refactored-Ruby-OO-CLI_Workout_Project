class CreateExerciseToWorkout < ActiveRecord::Migration[4.2]
  def change
  create_table :exercisetoworkouts do |t|
    t.integer :ex_id
    t.integer :workout_id
    end
  end
end
