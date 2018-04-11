# put info here
# require_relative "../config/environment.rb"

def pre_users
  10.times do
  User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "password", verification: "password")
  end
  User.new(first_name: "q", last_name: "q", password: "q", verification: "q")
end

def pre_data
  u = User.all.last
  uu = User.all.first
  ww = Workout.all.first
  www = Workout.all[2]
  w = Workout.all[4]
  roger = Favorite.new(u,w)
  roger2 = Favorite.new(u,www)
  roger3 = Favorite.new(u,ww)
  other = Favorite.new(uu,ww)
end

def pre_workouts
  Workout.new(name: "Ultimate Ab Workout" , duration: 15, description: "Works out your obliques and upper and lower abs. For when you only have 15 minutes to get it done. ")
  Workout.new(name: "Complete Upper Body Workout", duration: 30, description: " Concentrates on your chest, shoulders, and back." )
  Workout.new(name: "Do You Even Squat", duration:45, description:"Different variations of squats, lunges, and gluteus maximus Workout" )
  Workout.new(name: "SpongeBob Anchor Arms", duration: 25, description: "You've been spongebob anchor arms. Now do the workout that helped him achieve those amazing resuls!!!" )
  Workout.new(name: "Gain Hops Workout", duration: 20 , description: "Contains multiple HIIT to help you get that extra inch when hooping." )
  Workout.new(name: "Summer Bod in 6 weeks", duration:45, description: "Full body workout alternating different days to get ready for that summer." )
  Workout.new(name: "30 Minute Arms", duration: 32, description: "Got 32 minutes? Get buff arms fast.")
  Workout.new(name: "Body Pump", duration: 20, description: "Get your body moving with easy cardio execises!")
  Workout.new(name: "Action Hero Workout", duration: 45, description: "Go from zero to hero with this intense full body workout.")
  Workout.new(name: "Baby got back?", duration: 32, description: "Get your back muscles twerking with some wholesome back execises.")
  Workout.new(name: "Shoulder Tone", duration: 32, description: "Build good form with these shoulder Exercise.") #adding data to Exercises
end

def pre_exercises
Exercise.new(name: "Barbell Hack Squats", reps: 10 , sets: 3, category: "Legs")
Exercise.new(name: "Barbell Lunges", reps: 10 , sets: 3, category: "Legs")
Exercise.new(name: "Braced Squat", reps: 10 , sets: 3, category: "Legs")
Exercise.new(name: "Bulgarian Split Squat", reps: 12, category: "Legs")
Exercise.new(name: "Dumbbell Goblet Squat", reps: 12, category: "Legs")
Exercise.new(name: "Dumbbell Lunges Standing", reps: 12 , sets: 3, category: "Legs")
Exercise.new(name: "Dumbbell Lunges Walking", reps: 12 , sets: 3, category: "Legs")
Exercise.new(name: "Front Squats", reps: 8 , sets: 3, category: "Legs")
Exercise.new(name: "Glute Bridge", reps: 12 , sets: 3, category: "Legs")
Exercise.new(name: "Good Mornings", reps: 8 , sets: 3, category: "Legs") # #cardio Exercises
Exercise.new(name: "Bear Crawls", sets: 3, duration: 1, category: "Cardio")
Exercise.new(name: "Running", duration: 2, category: "Cardio")
Exercise.new(name: "Pre-Jog", duration: 5, category: "Cardio")
Exercise.new(name: "Sprints", duration: 0.5, category: "Cardio")
Exercise.new(name: "Bicycle", reps: 8 , sets: 3, category: "Cardio")
Exercise.new(name: "Rowing", duration: 5, category: "Cardio")
Exercise.new(name: "Walking", duration: 3, category: "Cardio")
Exercise.new(name: "Hurdles", reps: 8 , sets: 3, category: "Cardio")
Exercise.new(name: "Jumping Jacks", reps: 20 , sets: 4, category: "Cardio") # #Chest Exercises
Exercise.new(name: "Bear Walk", sets: 4, duration: 1, category: "Chest")
Exercise.new(name: "Bench Press", reps: 12, sets: 4, category: "Chest")
Exercise.new(name: "Bench Press Dumbbells", reps: 8, sets: 4, category: "Chest")
Exercise.new(name: "Butterfly", reps: 10, sets: 4, category: "Chest")
Exercise.new(name: "Butterfly Narrow Grip", reps: 10, sets: 3, category: "Chest")
Exercise.new(name: "Cable Cross-Over", reps: 8, sets: 4, category: "Chest")
Exercise.new(name: "Decline Bench Press Dumbbell", reps: 12, sets: 4, category: "Chest")
Exercise.new(name: "Fly w/ Cable", reps: 12, sets: 4, category: "Chest")
Exercise.new(name: "Fly w/ Dumbbells", reps: 12, sets: 2, category: "Chest")
Exercise.new(name: "Incline Bench Press", reps: 10, sets: 4, category: "Chest")
Exercise.new(name: "Incline Dumbbell Press", reps: 8, sets: 5, category: "Chest") #abs
Exercise.new(name: "2 Handed Kettlebell Swing", reps: 15, sets: 4, category: "Abs")
Exercise.new(name: "Barbell Ab Rollout", reps: 10, sets: 5, category: "Abs")
Exercise.new(name: "Cable Woodchoppers", reps: 15, sets: 4, category: "Abs")
Exercise.new(name: "Crunches", reps: 15, sets: 5, category: "Abs")
Exercise.new(name: "Crunches With Cable", reps: 15, sets: 4, category: "Abs")
Exercise.new(name: "Flutter Kicks", reps: 15, sets: 4, category: "Abs")
Exercise.new(name: "Hanging Leg Raises", reps: 10, sets: 3, category: "Abs")
Exercise.new(name: "Hollow Hold", sets: 3, duration: 1, category: "Abs")
Exercise.new(name: "L Hold", sets: 5, duration: 1, category: "Abs")
Exercise.new(name: "Leg Raises", sets: 5, duration: 2, category: "Abs")
Exercise.new(name: "Negative Crunches", reps: 20, sets: 3, category: "Abs")
Exercise.new(name: "Planks", sets: 5, duration: 2, category: "Abs")
Exercise.new(name: "Side Plank", sets: 4, duration: 2, category: "Abs")
Exercise.new(name: "Sit-ups", reps: 10, sets: 5, category: "Abs")
Exercise.new(name: "Trunk Rotation with Cable", reps: 15, sets: 5, category: "Abs")
Exercise.new(name: "Turkish Get-Up", reps: 20, sets: 3, category: "Abs") #Shoulders
Exercise.new(name: "Arnold Shoulder Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Bend High Pulls", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Butterfly Reverse", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Shoulder Press Dumbbell", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Face Pull", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Front Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Lateral Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Military Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Power Clean", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Push Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Shoulder Press Barbell", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Shoulder Press, on Multi Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Reat Delt Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.new(name: "Shrugs", reps: 11, sets: 3, category: "Shoulders") #back
Exercise.new(name: "Bent Over Barbell Row", reps: 15, sets: 3, category: "Back")
Exercise.new(name: "Bent Over Rowing", reps: 20, sets: 3, category: "Back")
Exercise.new(name: "Bent Over Rowing Reversw", reps: 20, sets: 3, category: "Back")
Exercise.new(name: "Chin-ups", reps: 10, sets: 4, category: "Back")
Exercise.new(name: "Close-grip Lat Pull Down", reps: 20, sets: 3, category: "Back")
Exercise.new(name: "Deadlifts", reps: 10, sets: 3, category: "Back")
Exercise.new(name: "Deficit Deadlift", reps: 10, sets: 3, category: "Back")
Exercise.new(name: "Hip Raises", reps: 10, sets: 3, category: "Back")
Exercise.new(name: "Incline Dumbbell Row", reps: 5, sets: 2, category: "Back")
Exercise.new(name: "Lat Pull Down", reps: 10, sets: 2, category: "Back")
Exercise.new(name: "Long-Pulley", reps: 10, sets: 5, category: "Back")
Exercise.new(name: "Pendelay Rows", reps: 15, sets: 5, category: "Back")
Exercise.new(name: "Rack Deadlift", reps: 10, sets: 5, category: "Back")
Exercise.new(name: "Superman", reps: 10, sets: 3, category: "Back")
Exercise.new(name: "V-Bar Pulldown", reps: 15, sets: 2, category: "Back") #arms
Exercise.new(name: "Axe Hold", reps: 10, sets: 5, category: "Arms")
Exercise.new(name: "Barbell Triceps Extension", reps: 10, sets: 3, category: "Arms")
Exercise.new(name: "Bench Press Narrow Grip", reps: 15, sets: 2, category: "Arms")
Exercise.new(name: "Biceps Curls With Cable", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "Bicep Curls With Barbell", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "Bicep Curls With Dumbell", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "Biceps Curls With SZ-bar", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "Body-Ups", reps: 10, sets: 3, category: "Arms")
Exercise.new(name: "Close-grip Bench Press", reps: 15, sets: 3, category: "Arms")
Exercise.new(name: "Deadhang", sets: 5, duration: 2, category: "Arms")
Exercise.new(name: "Dips", reps: 10, sets: 5, category: "Arms")
Exercise.new(name: "Dumbbell Incline Curl", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "French Press", reps: 10, sets: 4, category: "Arms")
Exercise.new(name: "Hammercurls", reps: 10, sets: 5, category: "Arms")
Exercise.new(name: "Military Press", reps: 15, sets: 5, category: "Arms")
Exercise.new(name: "Pike Push Ups", reps: 20, sets: 3, category: "Arms")
Exercise.new(name: "Preacher Curls", reps: 8, sets: 5, category: "Arms")
Exercise.new(name: "Push Ups", reps: 15, sets: 4, category: "Arms")
Exercise.new(name: "Seated Triceps Press", reps: 10, sets: 3, category: "Arms")
Exercise.new(name: "Tricep Bench Press One Dumbell", reps: 15, sets: 4, category: "Arms")
Exercise.new(name: "Tricep Dips", reps: 20, sets: 3, category: "Arms")
Exercise.new(name: "Wall Pushup", reps: 10, sets: 5, category: "Arms")

end

# def arms
#   work = Workout.find(4) #SpongeBob workout
#   work30 = Workout.find(7) #30 min arms
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Arms"
#       end
#   work.exercises << category_only
#   work30.exercises << category_only
#
# end
#
#
# def abs
#   work = Workout.find(1) #Ultimate ab workout
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Abs"
#       end
#   work.exercises << category_only
# end
#
#
# def shoulders
#   work = Workout.find(11) #shoulder
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Shoulders"
#       end
#   work.exercises << category_only
# end
#
# def back
#   work = Workout.find(10) #shoulder
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Back"
#       end
#   work.exercises << category_only
#
# end
# def upper_body
#   work = Workout.find(2) #upper body workout
#   chest_only = Exercise.all.select do |exercise|
#       exercise.category == "Chest"
#   end
#   back_only = Exercise.all.select do |exercise|
#       exercise.category == "Back"
#   end
#   all = chest_only + back_only
#   work.exercises << all
# end
#
# def cardio
#   work = Workout.find(8)
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Cardio"
#       end
#   work.exercises << category_only
#
# end
#
# def gain_hops
#   work = Workout.find(5) #upper body workout
#   legs_only = Exercise.all.select do |exercise|
#       exercise.category == "Legs"
#   end
#   cardio_only = Exercise.all.select do |exercise|
#       exercise.category == "Cardio"
#   end
#   all = legs_only + cardio_only
#   work.exercises << all
#
# end
# def squat
#   work = Workout.find(3)
#   category_only = Exercise.all.select do |exercise|
#         exercise.category == "Legs"
#       end
#   work.exercises << category_only
#
# end
#
# def action_hero
#   work = Workout.find(9) #
#   legs_only = Exercise.all.select do |exercise|
#       exercise.category == "Legs"
#   end
#   cardio_only = Exercise.all.select do |exercise|
#       exercise.category == "Cardio"
#   end
#   chest_only = Exercise.all.select do |exercise|
#       exercise.category == "Chest"
#   end
#   all = legs_only + cardio_only + chest_only
#   work.exercises << all
# end
#
# def summer_bod
#   work = Workout.find(7) #
#   abs_only = Exercise.all.select do |exercise|
#       exercise.category == "Abs"
#   end
#   cardio_only = Exercise.all.select do |exercise|
#       exercise.category == "Cardio"
#   end
#   all = abs_only + cardio_only
#   work.exercises << all
# end
#
# arms
# abs
# shoulders
# back
# upper_body
# cardio
# gain_hops
# squat
# action_hero
# summer_bod











#
