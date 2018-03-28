class User < ActiveRecord::Base
  has_many :favorites
  has_many :workouts, through: :favorites

  #puts list of user's favorite workouts
  def see_favorite_workouts
    self.workouts.each_with_index do |workouts, index|
      puts "#{index + 1}." + workouts.name
    end
    return nil
  end

  #finds workout_id when inputting a workout_name
  def find_workout_id(workout_name)

  end

  #views exercises of a given workout
  def see_favorite_workout_exercises(workout_name)
    all_exercises = find_workout(workout_name).exercises

    all_exercises.each_with_index do |exercises, index|
      puts "#{index + 1}." + exercises.name
    end
    return nil
  end

  #finds a specific workout
  def find_workout(workout_name)
    found_workout = Workout.find_by name: workout_name
  end

  #adds new workout to favorites
  def add_workout_to_favorites(workout_name)
  found_name = Workout.find_by name: workout_name
    self.workouts << found_name
  end

  #creates new user
  def self.create_user(first_name, last_name, weight)
    User.find_or_create_by(first_name: first_name, last_name: last_name, weight: weight)
  end

  #creates new workout
  def create_workout(name, duration, description)
    Workout.find_or_create_by(name: name, duration: duration, description: description)
  end


end
