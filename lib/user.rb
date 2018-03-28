class User < ActiveRecord::Base
  has_many :favorites
  has_many :workouts, through: :favorites


  def see_favorite_workouts
    self.workouts.each_with_index do |workouts, index|
      puts "#{index + 1}." + workouts.name
    end
    return nil
  end

  def find_workout_id(workout_name)
    found_name 

    end
  end

  def see_favorite_workout_exercieses(workout_name)
    id = find_workout_id(workout_name)
    Workout.id.select do |workout|
      workout.

  end


  def find_workout(workout_name)
    found_workout = Workout.find_by name: workout_name
  end


  def add_workout_to_favorites(workout_name)
  found_name = Workout.find_by name: workout_name
    self.workouts << found_name
  end

  def self.create_user(first_name, last_name, weight)
    User.find_or_create_by(first_name: first_name, last_name: last_name, weight: weight)
  end




end
