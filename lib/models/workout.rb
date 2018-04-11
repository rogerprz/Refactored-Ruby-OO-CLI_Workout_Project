class Workout
  # has_many :circuits
  # has_many :exercises, through: :circuits
  # has_many :favorites
  # has_many :users, through: :favorites
  attr_accessor :workout, :duration, :description
  ALL = []

  def initialize(args)
    @workout = args[:name]
    @duration = args[:duration]
    @description = args[:description]
    ALL << self
  end

  def self.all
    ALL
  end


end
# def self.stars
#   30.times do print "*"
#   end
# end
#
# def self.all_workouts
#   stars
#
#   puts "#{}"
#   Workout.all.each_with_index do |workout, index|
#     puts " #{index+1}. #{workout.name}"
#
#   end
#   return nil
#   30.times do print "*"
#   end
# end
#
# def self.find_workout(workout_name)
#   self.all.select do |workout|
#     workout.name == workout_name
#   end
# end
#
# def workout_description
#   self.find do |workout|
#     workout.description
#   end
# end
#
# def workout_duration
#   self.find do |workout|
#     workout.duration
#   end
#
# end
#
# def self.add_exercise(workout_id, ex_id)
#   join_workout = Exercise_to_workout.create(workout_id, ex_id)
#   self.exercises << exercise
#
# end
