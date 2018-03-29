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

def new_or_return
  choice = gets.chomp
  case choice
    when "n"

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
      new_or_return
    end

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


def user_info(first, last, pass)
  User.where(first_name: first, last_name: last, password: pass)
end

def returning_user
  puts "Please enter your first name: "
  first = gets.chomp
  puts "Please enter your last name: "
  last = gets.chomp
  puts "Please enter your Password: "
  pass = gets.chomp

  verify_person(first, last, pass)
  user_info(first, last, pass)
end


def verify_person(first, last, pass)
  where = User.where(first_name: first, last_name: last, password: pass)
  case where
    when nil
      puts "Please try again."
      puts "Could not verify 1 or more inputs:"
      puts "Enter first name: "
      first = gets.chomp
      puts "Enter last name: "
      last = gets.chomp
      puts "Please enter your Password: "
      pass = gets.chomp
      # where = User.find_by(first_name: first, last_name: last)
      verify_person(first,last, pass)
    else
      # user_info(first, last, pass)
      puts "Valid full name."
  end
end


def options_screen
  stars
  puts "|        What would you like to do?         |"
  puts "| Please choose from the following options: |"
  puts "1. See current workout programs."
  puts "2. See list of exercises by category."
  puts "3. Add a Workout to your Favorites."
  puts "4. Review your Favorite workouts."
  puts "5. Drop/Delete a Workout from your favorites"
  puts "6. Create your own Workout Program."
  puts "7. Add exercises to your Workout."
  puts "8. Remove exercises from your Workout."
  stars
  puts "Choose an option from 1 - 8, e = Exit"
  stars
end


def options(user)
  options_screen
  input = gets.chomp
  case input
    when "1"
      # binding.pry
      print_workouts
      sleep(3)
      options(user)
    when "2"
      category_options_print
      cat = gets.chomp
      print_by_category(cat)
      options(user)
    when "3"
      print_workouts
      puts "Select a workout name: "
      puts "You can enter 'e' to go back to the main menu"
      input = gets.chomp
      if input == "e"
         options(user)
       end
      # binding.pry
      verify_workout_name(input, user)
      user = user
      options(user)
    when "4"
      if user.workouts == [] || user.workouts == nil
        dash_line
        print "|  No Favorites found. Please add a workout to Favorites  |"
        dash_line
        options(user)
      end
      dash_line
      user.workouts.each_with_index do |fav, index|
        # binding.pry
        puts "#{index+1}. #{fav.name}."
      end
      dash_line
      user = user
      options(user)
    when "5"
    when "6"
      puts "What is your Workout name?"
      name = gets.chomp
      puts "How long is your workout?"
      duration = gets.chomp.to_i
      puts "Give us a brief description of your workout:"
      description = gets.chomp
      w = Workout.create(name: name, duration: duration, description: description)
      puts "Workout added!"
      puts "#{w.name.upcase}"
      puts "#{w.duration}"
      puts "#{w.description}"
      options(user)
    when "7"
      print_workouts
      puts "What is the name of your workout?"
      workout_name = gets.chomp
      category_options_print
      puts "Pick which category:"
      category = gets.chomp
      print_by_category(category)
      options(user)
    when "8"
      options(user)

    when "e"
      goodbye
    else
      puts "Not a valid option lookup choice"
      puts "Please try again: "
      options(user)

    end
end

#if it already exists it add it again. need to fix no duplicates.
def verify_workout_name(input, user)
  # binding.pry
  if input == "e"
    goodbye
    abort
  end

  find = Workout.find_by(name: input)
  case find
  when nil
    dash_line
    puts "We don't have that workout available. "
    puts "Please select once more."
    print_workouts
    input =gets.chomp
    verify_workout_name(input, user)
  when "e"
    goodbye
    abort
  else
    user.workouts << find
    dash_line
    puts "Workout Verfied. Added to your favorites"
    puts "#{find.name}."
    dash_line
  end
end

def dash_line
  print "----------------------------------------------------------"

end



def print_workouts
  a = Workout.all
  a.each_with_index do |workout, index|
    puts "#{index + 1}. #{workout.name}"
    puts "--- Duration: #{workout.duration}"

  end
end

def print_by_category(cat)
  a = Exercise.where(category: cat)
  # binding.pry
  case a
  when []
    puts "Not a valid option, Please try again: "
    cat = gets.chomp
    print_by_category(cat)
  when nil
    puts "Not a valid option, Please try again: "
    cat = gets.chomp
    print_by_category(cat)
  when "e"
    options(user)
  else
    a.each_with_index do |exercise, index|
      puts "#{index + 1}. #{exercise.name.upcase}"
      puts "--- Sets: #{exercise.sets}"
      puts "--- Reps: #{exercise.reps}"
      puts "--- Time: #{exercise.duration}"
    end
    sleep(5)
end
end


def self.run

  welcome

  user = new_or_return
  options(user)

end



def category_options_print
  puts "----OPTIONS---- "
  puts "** Arms"
  puts "** Chest"
  puts "** Legs"
  puts "** Back"
  puts "** Shoulders"
  puts "** Cardio"
  puts "Type your category: "



end

def goodbye
  puts "Thank you for stopping by. Goodbye!!!"
  abort
end


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
