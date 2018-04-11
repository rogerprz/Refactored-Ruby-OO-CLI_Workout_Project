class Favorite # < ActiveRecord::Base
  # belongs_to :user
  # belongs_to :workout
  ALL = []
  attr_accessor :user, :workout


  def initialize(user, workout)
    @user = user
    @workout = workout
    ALL << self
  end

  def self.all
    ALL
  end


end
