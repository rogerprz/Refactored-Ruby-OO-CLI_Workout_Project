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

  def add_workout_to_favorites(workout_name)
  found_name = Workout.find_by name: workout_name
    self.favorites << found_name
     binding.pry
  end

  def self.create_user(first_name, last_name, weight)
    User.find_or_create_by(first_name: first_name, last_name: last_name, weight: weight)
  end




end
