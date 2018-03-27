class Favorites < ActiveRecord::Base
  has_many :users
  belongs_to :exercises, through :workouts



end
