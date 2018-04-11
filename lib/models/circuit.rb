require_relative '../../config/environment.rb'

class Circuit #< ActiveRecord::Base
  # belongs_to :exercise
  # belongs_to :workout
  ALL = []
  attr_accessor :exercise, :workout


  def initialize(exercise, workout)
    @user = user
    @workout = workout
    ALL << self
  end

  def self.all
    ALL
  end






end
