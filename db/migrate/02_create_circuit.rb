class CreateCircuit < ActiveRecord::Migration[4.2]
  def change
  create_table :circuits do |t|
    t.integer :exercise_id
    t.integer :workout_id
    end
  end
end
