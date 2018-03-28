class User < ActiveRecord::Base
  has_many :favorites
  has_many :workouts, through: :favorites


  def see_workouts
    self.workouts
  end

  def add_workout(workout_name)
  found_name = Workout.find_by name: workout_name
    self.workouts << found_name
  end




end
