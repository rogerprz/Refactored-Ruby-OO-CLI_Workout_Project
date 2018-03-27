class CreateWorkout < ActiveRecord::Migration[4.2]
  def change
    #id
  create_table :workouts do |t|
    t.string :name
    t.integer :duration
    end
  end
end
