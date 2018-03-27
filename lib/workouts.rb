class Workouts < ActiveRecord::Base
  has_many :exercises
  has_many :users
end
