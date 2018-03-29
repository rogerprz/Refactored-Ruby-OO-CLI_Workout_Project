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


def new_or_return(choice)
  case choice
    when "n"
      puts "Welcome new user"
      new_user
    when "r"
      puts "Welcome Back"
      returning_user
    when "e"
      puts "Thank you for stopping by. Goodbye!"
        abort
    else

      puts "Not a valid input. Please try again: "
      puts " *** r = return, n = new, e = Exit ***  "
      choice = gets.chomp
      new_or_return(choice)
    end

end





# def verify_password(full, lookup)
#
#   case full
#
#   when "#{lookup.first_name} #{lookup.last_name}"
#     puts "Valid full name."
#     abort
#   when "e"
#     abort
#   else
#     puts "Please try again."
#     puts "Could not verify your name:"
#     puts "Enter first name: "
#     first = gets.chomp
#     puts "Enter last name: "
#     last = gets.chomp
#     full ="#{first} #{last}"
#     lookup = User.find_by(first_name: first,last_name: last)
#     verify(full, lookup)
#   end
# end



def verify_person(first, last, pass)
  find = User.find_by(first_name: first, last_name: last, password: pass)
  case find
    when nil
      puts "Please try again."
      puts "Could not verify 1 or more inputs:"
      puts "Enter first name: "
      first = gets.chomp
      puts "Enter last name: "
      last = gets.chomp
      puts "Please enter your Password: "
      pass = gets.chomp
      # find = User.find_by(first_name: first, last_name: last)
      verify_person(first,last, pass)
    else
      puts "Valid full name."
  end
end



def returning_user
  puts "Please enter your first name: "
  first = gets.chomp
  puts "Please enter your last name. Example: Smith. "
  last = gets.chomp
  puts "Please enter your Password: "
  pass = gets.chomp

  # full = "#{first} #{last}"
  # lookup = User.find_by(first_name: first, last_name: last)
  verify_person(first, last, pass)
  # verify_person(full,lookup)
  # user = User.find_by(first_name: first, last_name: last)

  # verify = user.password
  # verify_password(pass, verify)

end



def new_user
  puts "Welcome New User! Please input your first name:"
    first_name = gets.chomp
        puts "Hello #{first_name}! Please input your last name:"
    last_name = gets.chomp
        puts "Please input a new password:"
    password = gets.chomp
        puts "Please verify password:"
    password_verification = gets.chomp
       until password_verification == password
         puts "Not the same password! Please try again:"

         password = gets.chomp
             puts "Please re-verify password:"
         password_verification = gets.chomp
       end
    puts "Welcome #{first_name} #{last_name}."
    User.create(first_name: first_name, last_name: last_name, password: password)
end


def goodbye
  puts "Thank you for stopping by. Goodbye!!!"
  abort
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
  puts "Choose an option from 1 - 8, e = Exit"
  stars
end

def options
  options_screen
  input = gets.chomp
  case input
    when "1"
      # binding.pry
      a = Workout.all
      a.each_with_index do |workout, index|
        puts "#{index + 1}. #{workout.name}"
      end
    when "2"
    when "3"
    when "4"
    when "5"
    when "6"
    when "7"
    when "8"
    when "e"
      goodbye
    else
      puts "Not a valid option lookup choice"
      puts "Please try again: "
      options


  end

end



def run

  welcome
  input = gets.chomp
  new_or_return(input)
  options

end

run



  # new_user
  # returning_user





#ICEBOX

# def verify_password(pass, verify)
#   case pass
#     when verify
#         puts "Welcome back #{lookup.first_name}"
#     when "e"
#       "Thank you for stopping by. Goodbye!!!"
#       abort
#     else
#         puts "password does not match, please try again."
#         try_again = gets.chomp
#         verify_user(try_again, verify)
#     end
#
# end
