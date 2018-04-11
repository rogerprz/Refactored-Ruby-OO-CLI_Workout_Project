require_relative '../../config/environment.rb'

class Exercise #< ActiveRecord::Base
  # has_many :circuits
  # has_many :workouts, through: :circuits

  attr_accessor :name, :reps, :sets, :duration, :category
  ALL = []

  def initialize(args = nil)
    # binding.pry
    @name = args[:name]
    @reps = args[:reps]
    @sets = args[:sets]
    @duration = args[:duration]
    @category = args[:category]
    ALL << self
  end

  def self.all
    ALL
  end

end
