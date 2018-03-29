require_relative '../../config/environment.rb'


class Exercise < ActiveRecord::Base
  has_many :circuits
  has_many :workouts, through: :circuits


end
