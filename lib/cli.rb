require_relative '../lib/models/circuit.rb'
require_relative '../lib/models/exercise.rb'
require_relative '../lib/models/favorite.rb'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/workout.rb'


def stars
  35.times do
    print "*"
  end
  puts "*"
end
def welcome
print stars
puts "***WELCOME TO FLATIRON GET FIT CLI***"
puts "Are you a new or returning user?"
puts "Please select from the following options:"
puts "(n = new, r = returning, e = exit)"
print stars
print "Pick an option: "
end

def new_or_returning(choice)
  while choice.downcase != "n" || !choice.downcase != "e" || !choice.downcase != "r"
    if choice.downcase == "n"
      new_user
    elsif choice.downcase == "r"
      print "Welcome back"
    elsif choice.downcase == "e"
      print "Thank you for stopping by. Goodbye!"
    else
      print "Not a valid input. Please try again."
    end
    choice = gets.chomp
  end
end


#give returning users options access
#give new users option to create new
#end if they pressed e

def new_user

  puts "Welcome New User! What is your first name?"
  first_name = gets.chomp


  puts "Hi #{first_name}! What is your last name?"
  last_name = gets.chomp
  puts "What is your weight #{first_name} #{last_name}?"
  weight = gets.chomp

  User.find_or_create_by(first_name: first_name, last_name: last_name, weight: weight)

  puts "Welcome #{first_name}"

end


# def run
  welcome
  input = gets.chomp
  new_or_returning(input)
  new_user

# end




#
