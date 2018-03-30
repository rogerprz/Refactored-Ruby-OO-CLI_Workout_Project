require_relative '../lib/models/circuit.rb'
require_relative '../lib/models/exercise.rb'
require_relative '../lib/models/favorite.rb'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/workout.rb'






def welcome
  puts stars
  puts "|                                      |"
  puts "|***WELCOME TO FLATIRON GET FIT CLI*** |"
  puts "|                                      |"
  dash_line
  puts "|Are you a new or returning user?      |"
  puts "Please select from the following options:"
  puts "| n = NEW || r = returning || e = exit |"
  print stars
  print "Pick an option: "
end

def new_or_return
  choice = gets.chomp
  case choice
    when "n"

      new_user
    when "r"
      puts "|       Welcome Back        |"
      returning_user
    when "e"
      dash_line
      goodbye
      dash_line
    else
      dash_line
      puts "Not a valid input. Please try again: "
      puts "*** r = return, n = new, e = Exit ***"
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
  User.find_or_initialize_by(first_name: first, last_name: last, password: pass)
end

def returning_user
  stars
  puts "Please enter your first name: "
  first = gets.chomp
  stars
  puts "Please enter your last name: "
  last = gets.chomp
  stars
  puts "Please enter your Password: "
  pass = gets.chomp

  verify_person(first, last, pass)
  user_info(first, last, pass)
  # binding.pry
end

def print_try_again
  stars
  puts "Please try again."
  puts "Could not verify 1 or more inputs:"
end

def verify_person(first, last, pass)
  where = User.where(first_name: first, last_name: last, password: pass)
  # binding.pry
  case where
    when nil
      print_try_again
      returning_user
    when []
      print_try_again
      returning_user
    else
      # user_info(first, last, pass)
      stars
      puts "|       CONFIRMED IDENTITY      |"
      stars
  end
end


def options_screen
  stars
  puts "|        What would you like to do?         |"
  puts "| Please choose from the following options: |"
  dash_line
  puts "1. See current workout programs.            |"
  puts "2. See list of exercises by category."
  puts "3. Add a Workout to your Favorites."
  puts "4. Review your Favorite workouts."
  puts "5. Drop/Delete a Workout from Favorites"
  puts "6. Create your own Workout Program."
  puts "7. Add exercises to a Workout."
  puts "8. Update Workout Name. "
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
      puts "You can enter 'e' to go back to the main menu"
      puts "Select a workout number: "
      id = gets.chomp
      # puts "Select Workout name: "
      # input =gets.chomp
      if id == "e"
         options(user)
       end
      # binding.pry
      verify_workout_name(id, user)
      sleep(3)
      options(user)
    when "4"
      if user.workouts == [] || user.workouts == nil
        dash_line
        dash_line
        print "|  No Favorites found. Please add a workout to Favorites  |"
        dash_line

        options(user)
      end
      dash_line
      favorite_workout_list(user)
      dash_line
      sleep(3)
      dash_line
      options(user)
    when "5"
      puts "If you change your mind use 'e' to exit to menu."
      dash_line
      puts "Workout ID ||           NAME          |"
      user.workouts.each do |workout|
        puts "#{workout.id}            #{workout.name}"
      end
      dash_line
      puts "Select the number that you would like to remove."
      id = gets.chomp

      delete_workout_favorites(id, user)
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
      print_workouts
      puts "You can enter 'e' to go back to the main menu"
      puts "Select a workout number you want to update: "
      id = gets.chomp
      # puts "Select Workout name: "
      # input =gets.chomp
      if id == "e"
         options(user)
       end
      # binding.pry
      puts "What name would you like the workout to be updated to?"
      name = gets.chomp
      update_workout_name(id, name, user)
      sleep(3)
      options(user)
    when "e"
      goodbye
    else
      puts "Not a valid option lookup choice"
      puts "Please try again: "
      options(user)

    end
end


def update_workout_name(id, name, user)
  if id == "e"
    goodbye
    abort
  end

  where = Workout.where(id: id)
  # binding.pry
  case where
    when nil
      print_verify_workout_error
      id = gets.chomp
      verify_workout_name(id, user)
    when []
      print_verify_workout_error
      id = gets.chomp
      verify_workout_name(id, user)
    when "e"
      goodbye
      abort
    else
      # binding.pry
      updated = where.update(name: name)
      dash_line
      puts "Workout name updated. "
      # puts "#{where.name}."
      dash_line
    end

end
#if it already exists it add it again. need to fix no duplicates.
def verify_workout_name(id, user)
  # binding.pry
  if id == "e"
    goodbye
    abort
  end

  where = Workout.where(id: id)
  # binding.pry
  case where
    when nil
      print_verify_workout_error
      id = gets.chomp
      verify_workout_name(id, user)
    when []
      print_verify_workout_error
      id = gets.chomp
      verify_workout_name(id, user)
    when "e"
      goodbye
      abort
    else
      # binding.pry
      user.workouts << where
      dash_line
      puts "Workout Verfied. Added to your favorites"
      puts "#{where.name}."
      dash_line
  end
end

def delete_workout_favorites(id, user)
  if user.workouts == [] || user.workouts == nil
    dash_line
    dash_line
    print "|  No Favorite workouts to remove. Please add a workout to Favorites  |"
    dash_line
    sleep(3)
    options(user)
  end

  if id == "e"
    options(user)
  end
  where = Workout.where(id: id)
  # binding.pry
  case where
    when nil
      favorite_workout_list(user)
      id = gets.chomp
      delete_workout_favorites(id, user)
    when []
      favorite_workout_list(user)
      id = gets.chomp
      delete_workout_favorites(id, user)
    when "e"
      goodbye
      abort
    else
      binding.pry
      removed = user.favorites.find_by(workout_id: id).destroy
      puts "Successfully removed workout from favorites!!!"
      # binding.pry
      sleep(3)
      options(user)
    end

end

def print_verify_workout_error
  dash_line
  print_workouts
  dash_line
  puts "We don't have that workout available. "
  puts "Please select once more."
  dash_line

end

def print_favorite_workout_error
  dash_line

  dash_line
  puts "We don't have that workout available. "
  puts "Please select once more."
  dash_line

end


def print_workouts
  a = Workout.all
  a.each do |workout|
    puts "#{workout.id}. #{workout.name}"
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


def run
  welcome
  user = new_or_return
  options(user)

end

def favorite_workout_list(user)
  user.workouts.each do |fav|
    # binding.pry
    puts "#{fav.id}. #{fav.name}."

  end

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
def dash_line
  puts "-----------------------------------------"

end
def goodbye
  puts "Thank you for stopping by. Goodbye!!!"
  abort
end
def stars
  puts "****************************************"
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
