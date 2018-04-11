require_relative '../lib/models/circuit.rb'
require_relative '../lib/models/exercise.rb'
require_relative '../lib/models/favorite.rb'
require_relative '../lib/models/user.rb'
require_relative '../lib/models/workout.rb'
require_relative '../lib/models/seeds.rb'



def welcome
  puts stars
  stars
  puts "|***  WELCOME TO FLATIRON GET FIT CLI   ***|"
  stars
  dash_line
  puts "|##  Are you a new or returning user?    ##|"
  puts "|Please select from the following options: |"
  puts "|| n = NEW || r = RETURNING || e = EXIT   ||"
  print stars
  print "|Pick an option:                           |\n"
end
def options_screen
  stars
  puts "|        What would you like to do?         |"
  puts "| Please choose from the following options: |"
  dash_line
  puts "# 1. See current workout programs.          |"
  puts "# 2. See list of exercises by category.     |"
  puts "# 3. Add a Workout to your Favorites.       |"
  puts "# 4. Review your Favorite workouts.         |"
  puts "# 5. Drop/Delete a Workout from Favorites   |"
  puts "# 6. Create your own Workout Program.       |"
  puts "# 7. Update Workout Name.                   |"
  # puts "8. Update Workout Name. "
  stars
  puts "##  Choose an option from 1 - 7, e = Exit  ##"
  stars
  puts "\n"
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

def print_workouts
  a = Workout.all

  a.each_with_index do |program, index|

    puts "#{index+1}. #{program.workout}"
    puts "--- Duration: #{program.duration}"
    puts "######\n Description: #{program.description}."
    puts "#"*35 + "\n"
  end
  stars
  dash_line
  sleep(1)
end

def print_by_categorfy
  input = gets.chomp

  a = Exercise.all.select do |exercise|
    exercise.category.downcase == input.downcase
  end

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
  # end
end


def options(user)
  options_screen
  input = gets.chomp
  case input
    when "1"
      print_workouts
      sleep(3)
      options(user)
    when "2"
      category_options_print
      # cat = gets.chomp
      print_by_category
      options(user)
    when "3"
      print_workouts
      puts "You can enter 'e' to go back to the main menu"
      puts "Please enter the workout name (capitalization does not matter): "
      name = gets.chomp.downcase

      if name == "e"
         options(user)
      end
      workout = verify_workout_name(name, user)
      sleep(3)

      added = Favorite.new(user, workout)

      puts "Added #{added.workout.workout} to your favorites".upcase
      options(user)
    when "4"

      fav = Favorite.all.select do |elem|

        elem.user == user
      end

      if fav == [] || fav == nil
        stars
        dash_line
        print "|  No Favorites found. Please add a workout to Favorites  |\n".upcase
        dash_line
        sleep(2)
        options(user)
      end
      dash_line

      print_fav_workout_list(user)
      dash_line
      sleep(3)
      dash_line
      options(user)
    when "5"
      puts "If you change your mind use 'e' to exit to menu."
      dash_line
      print_fav_workout_list(user)
      dash_line


      delete_workout_favorites(name, user)
    when "6"
      puts "What is your Workout name?"
      name = gets.chomp.upcase
      puts "How long is your workout?"
      duration = gets.chomp.to_i
      puts "Give us a brief description of your workout:"
      description = gets.chomp
      w = Workout.new(name: name, duration: duration, description: description)
      puts "Workout added!"

      puts "Workout Name: #{w.workout}"
      puts "Duration:     #{w.duration}"
      puts "Description:  #{w.description}"
      options(user)
    when "7"
      print_workouts

      update_workout_name(current = nil, new_name = nil, user)
      options(user)
    when "e"
      goodbye
    else
      puts "Not a valid option lookup choice"
      puts "Please try again: "
      options(user)
    end
end

def new_or_return
  choice = gets.chomp
  case choice
    when "n"
      new_user
    when "r"
      puts "|       Welcome Back        |"
      user = returning_user
      return user
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
    user
end

def user_info(args)
  # args = {first_name: first_name, last_name: last_name, password: password, verification: verify}
  User.new(args)
end

def new_user
  puts "Welcome New User! Please input your first name:"
    first_name = gets.chomp
        puts "Hello #{first_name}! Please input your last name:"
    last_name = gets.chomp
        puts "Please input a new password:"
    password = gets.chomp
        puts "Please verify password:"
    verify_pw = gets.chomp
       until verify_pw == password
         puts "Not the same password! Please try again:"

         password = gets.chomp
             puts "Please re-verify password:"
         verify_pw = gets.chomp
       end
    dash_line
    dash_line
    puts "Welcome #{first_name} #{last_name}."
    user_info(first_name: first_name, last_name: last_name, password: password, verification: verify_pw)
end

def verify_person(creds)
  first = creds[:first_name]
  last = creds[:last_name]
  pass = creds[:password]
  verified = User.all.find do |user|
    if user.first_name == first && user.verification == pass
      user
    end
  end


  case verified
    when nil
      print_try_again
      returning_user
    when []
      print_try_again
      returning_user
    when "User not verified."
      print_try_again
      returning_user
    else
      stars
      puts "|       CONFIRMED IDENTITY      |"
      stars

      verified

  end
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

  identity = verify_person(first_name: first,last_name: last, password: pass)

  identity
end

def print_try_again
  stars
  puts "Please try again."
  puts "Could not verify 1 or more inputs:"
end

def find_user(first_name: first,last_name: last,password: pass)
  User.all.select do |user|
    if user.first_name && user.last_name && user.password
      return user
    else
      "User not verified."
    end
  end
end



def update_workout_name(current, new_name, user)
  puts "You can enter 'e' to go back to the main menu"
  puts "Select the workout name you want to update: "
  current = gets.chomp.downcase

  if current == "e"
     options(user)
   end
  verify_workout_name(current, user)

  puts "What name would you like the workout to be updated to?"
  new_name = gets.chomp
  if new_name == "e"
    goodbye
  end
  rename = Workout.all.find do |work|
    work.workout.downcase == current
  end
  case rename
    when nil
      print_verify_workout_error
      update_workout_name(current, new_name, user)
    when []
      print_verify_workout_error
      update_workout_name(current, new_name, user)
    when "e"
      goodbye
    else
      find = Workout.all.find do |work|
        work == rename
      end
      find.workout = new_name
      dash_line
      dash_line
      puts "Workout name updated to #{new_name} "
      dash_line
      dash_line
      sleep(2)
    end

end
#if it already exists it add it again. need to fix no duplicates.
def verify_workout_name(name, user)
  if name == "e"
    goodbye
  end
  found = Workout.all.find do |program|
    program.workout.downcase == name.downcase
  end
  case found
    when nil
      print_verify_workout_error
      name = gets.chomp

      verify_workout_name(name, user)
    when []
      print_verify_workout_error
      name = gets.chomp
      verify_workout_name(name, user)
    when "e"
      goodbye
    else

      dash_line
      puts "     Workout Verfied!!     \n"

      dash_line
      found
  end

end


def delete_workout_favorites(name, user)
  list = user_favorites(user)
  if list == [] || list == nil
    dash_line
    dash_line
    puts "|      No Favorite workouts to remove.    |\n".upcase
    puts "|    Please add a workout to Favorites    |\n".upcase
    dash_line
    sleep(2)
    options(user)
  end
  puts "Please type the name of the workout you would like to drop."
  name = gets.chomp.downcase

  if name == "e"
    options(user)
  end
  drop = list.find do |work|

    work.workout.workout.downcase == name
  end

  case drop
    when nil
      print_fav_workout_list(user)
      name = gets.chomp
      delete_workout_favorites(name, user)
    when []
      print_fav_workout_list(user)
      name = gets.chomp
      delete_workout_favorites(name, user)
    when "e"
      goodbye
    else
      puts "Successfully removed #{drop.workout.workout} from favorites!!!"
      Favorite.all.select! do |program|
        program != drop
      end

      sleep(2)
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


def start
  welcome
  user = new_or_return

  options(user)

end

def user_favorites(user)
  Favorite.all.select do |fav|
    fav.user == user
  end
end

def print_fav_workout_list(user)
  count = 0
  list =user_favorites(user)


  list.each do |work|
    count += 1

    puts "#{count}. #{work.workout.workout}."
  end

end

def dash_line
  puts "-"*45 + "\n"
end

def goodbye
  puts "Thank you for stopping by. Goodbye!!!"
  abort
end

def stars
  puts "*"*45 + "\n"
end
