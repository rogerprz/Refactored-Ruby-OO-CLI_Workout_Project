class Exercises < ActiveRecord::Base
  belongs_to :workout
  has_many :users, through: :workout

end
