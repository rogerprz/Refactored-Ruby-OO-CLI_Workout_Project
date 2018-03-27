class Exercise < ActiveRecord::Base
  has_many :exercise_to_workout
  has_many :workouts, through: :exercise_to_workout


end
