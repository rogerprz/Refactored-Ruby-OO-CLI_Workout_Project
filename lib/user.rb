class User < ActiveRecord::Base
  has_many :favorites
  has_many :workouts, through: :favorites






end
