class Exercise < ActiveRecord::Base
  has_many :circuits
  has_many :workouts, through: :circuits


end
