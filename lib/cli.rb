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
      puts "Welcome back! Please provide your id"
      puts "if you can't rememeber your id, please provide your first name."
      r_input = gets.chomp
    elsif choice.downcase == "e"
      puts "Thank you for stopping by. Goodbye!"
      break
    else
      puts "Not a valid input. Please try again."
    end
    choice = gets.chomp
  end
end



#give returning users options access
#give new users option to create new
#end if they pressed e
def returning_user(r_input)
  number = User.find(r_input)
  fname = User.find_by(first_name: r_input)
  if r_input == r_input.to_i && r_input == number.id
    user = User.find(r_input)

    print " Great to have you back #{user.first_name} #{user.last_name}"
  elsif r_input == r_input.to_s
    user = User.find_by(first_name: r_input)
    puts "Please provide your last name #{user}."
    last = gets.chomp
    full = User.find_by(first_name: r_input, last_name: last)
    puts "Great to have you back #{full.first_name} #{full.last_name}"
  else
    puts "That is not a valid option."

  end

end
def new_user

  case
  puts "Welcome New User! What is your first name?"

  #make sure it is a string
  first_name = gets.chomp

  result = case first_name
  when String
  puts "Hi #{first_name}! What is your last name?"
  when Fixnum
  puts "Invalid Name! Please provide a real name."
  else
  puts 'Invalid Name! Please provide a real name.'


  end


  #make sure string
  puts "Hi #{first_name}! What is your last name?"
  last_name = gets.chomp
  until last_name.class == string
  puts "Invalid Name! Please provide a real name."



  User.find_or_create_by(first_name: first_name, last_name: last_name)

  puts "Welcome #{first_name}"

end

def options_screen
  stars
  puts "What would you like to do?"
  puts "Please choose from the following options: "
  puts "1. See current workout programs."
  puts "2. See list of exercises by category."
  puts "3. Review your Favorite workouts."
  puts "4. Add a Workout to your Favorites."
  puts "5. Drop/Delete a Workout from your favorites"
  puts "6. Create your own Workout Program."
  puts "7. Add exercises to your Workout."
  stars

end




# def run

  welcome
  input = gets.chomp
  new_or_returning(input)
  options_screen



  # new_user
  # returning_user

# end




#
