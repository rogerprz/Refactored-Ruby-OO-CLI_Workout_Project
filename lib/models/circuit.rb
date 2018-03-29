require_relative '../../config/environment.rb'

class Circuit < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout






end
