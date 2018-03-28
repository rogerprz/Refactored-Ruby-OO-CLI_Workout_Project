# put info here
require_relative "../config/environment.rb"


10.times do
User.find_or_create_by(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, weight: Random.rand(80..300))
end

Workout.find_or_create_by(name: "Ultimate Ab Workout" , duration: 15, description: "Works out your obliques and upper and lower abs. For when you only have 15 minutes to get it done. ")
Workout.find_or_create_by(name: "Complete Upper Body Workout", duration: 30, description: " Concentrates on your chest, shoulders, and back." )
Workout.find_or_create_by(name: "Do You Even Squat", duration:45, description:"Different variations of squats, lunges, and gluteus maximus Workout" )
Workout.find_or_create_by(name: "SpongeBob Anchor Arms", duration: 25, description: "You've been spongebob anchor arms. Now do the workout that helped him achieve those amazing resuls!!!" )
Workout.find_or_create_by(name: "Gain Hops Workout", duration: 20 , description: "Contains multiple HIIT to help you get that extra inch when hooping." )
Workout.find_or_create_by(name: "Summer Bod in 6 weeks", duration:45, description: "Full body workout alternating different days to get ready for that summer." )
Workout.find_or_create_by(name: "30 Minute Arms", duration: 32, description: "Got 32 minutes? Get buff arms fast.")
Workout.find_or_create_by(name: "Body Pump", duration: 20, description: "Get your body moving with easy cardio execises!")
Workout.find_or_create_by(name: "Action Hero Workout", duration: 45, description: "Go from zero to hero with this intense full body workout.")
Workout.find_or_create_by(name: "Baby got back?", duration: 32, description: "Get your back muscles twerking with some wholesome back execises.")
Workout.find_or_create_by(name: "Shoulder Tone", duration: 32, description: "Build good form with these shoulder Exercise.") #adding data to Exercises
Exercise.find_or_create_by(name: "Barbell Hack Squats", reps: 10 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Barbell Lunges", reps: 10 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Braced Squat", reps: 10 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Bulgarian Split Squat", reps: 12, category: "Legs")
Exercise.find_or_create_by(name: "Dumbbell Goblet Squat", reps: 12, category: "Legs")
Exercise.find_or_create_by(name: "Dumbbell Lunges Standing", reps: 12 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Dumbbell Lunges Walking", reps: 12 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Front Squats", reps: 8 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Glute Bridge", reps: 12 , sets: 3, category: "Legs")
Exercise.find_or_create_by(name: "Good Mornings", reps: 8 , sets: 3, category: "Legs") # #cardio Exercises
Exercise.find_or_create_by(name: "Bear Crawls", sets: 3, duration: 1, category: "Cardio")
Exercise.find_or_create_by(name: "Running", duration: 2, category: "Cardio")
Exercise.find_or_create_by(name: "Pre-Jog", duration: 5, category: "Cardio")
Exercise.find_or_create_by(name: "Sprints", duration: 0.5, category: "Cardio")
Exercise.find_or_create_by(name: "Bicycle", reps: 8 , sets: 3, category: "Cardio")
Exercise.find_or_create_by(name: "Rowing", duration: 5, category: "Cardio")
Exercise.find_or_create_by(name: "Walking", duration: 3, category: "Cardio")
Exercise.find_or_create_by(name: "Hurdles", reps: 8 , sets: 3, category: "Cardio")
Exercise.find_or_create_by(name: "Jumping Jacks", reps: 20 , sets: 4, category: "Cardio") # #Chest Exercises
Exercise.find_or_create_by(name: "Bear Walk", sets: 4, duration: 1, category: "Chest")
Exercise.find_or_create_by(name: "Bench Press", reps: 12, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Bench Press Dumbbells", reps: 8, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Butterfly", reps: 10, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Butterfly Narrow Grip", reps: 10, sets: 3, category: "Chest")
Exercise.find_or_create_by(name: "Cable Cross-Over", reps: 8, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Decline Bench Press Dumbbell", reps: 12, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Fly w/ Cable", reps: 12, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Fly w/ Dumbbells", reps: 12, sets: 2, category: "Chest")
Exercise.find_or_create_by(name: "Incline Bench Press", reps: 10, sets: 4, category: "Chest")
Exercise.find_or_create_by(name: "Incline Dumbbell Press", reps: 8, sets: 5, category: "Chest") #abs
Exercise.find_or_create_by(name: "2 Handed Kettlebell Swing", reps: 15, sets: 4, category: "Abs")
Exercise.find_or_create_by(name: "Barbell Ab Rollout", reps: 10, sets: 5, category: "Abs")
Exercise.find_or_create_by(name: "Cable Woodchoppers", reps: 15, sets: 4, category: "Abs")
Exercise.find_or_create_by(name: "Crunches", reps: 15, sets: 5, category: "Abs")
Exercise.find_or_create_by(name: "Crunches With Cable", reps: 15, sets: 4, category: "Abs")
Exercise.find_or_create_by(name: "Flutter Kicks", reps: 15, sets: 4, category: "Abs")
Exercise.find_or_create_by(name: "Hanging Leg Raises", reps: 10, sets: 3, category: "Abs")
Exercise.find_or_create_by(name: "Hollow Hold", sets: 3, duration: 1, category: "Abs")
Exercise.find_or_create_by(name: "L Hold", sets: 5, duration: 1, category: "Abs")
Exercise.find_or_create_by(name: "Leg Raises", sets: 5, duration: 2, category: "Abs")
Exercise.find_or_create_by(name: "Negative Crunches", reps: 20, sets: 3, category: "Abs")
Exercise.find_or_create_by(name: "Planks", sets: 5, duration: 2, category: "Abs")
Exercise.find_or_create_by(name: "Side Plank", sets: 4, duration: 2, category: "Abs")
Exercise.find_or_create_by(name: "Sit-ups", reps: 10, sets: 5, category: "Abs")
Exercise.find_or_create_by(name: "Trunk Rotation with Cable", reps: 15, sets: 5, category: "Abs")
Exercise.find_or_create_by(name: "Turkish Get-Up", reps: 20, sets: 3, category: "Abs") #Shoulders
Exercise.find_or_create_by(name: "Arnold Shoulder Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Bend High Pulls", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Butterfly Reverse", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Shoulder Press Dumbbell", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Face Pull", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Front Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Lateral Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Military Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Power Clean", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Push Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Shoulder Press Barbell", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Shoulder Press, on Multi Press", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Reat Delt Raises", reps: 11, sets: 3, category: "Shoulders")
Exercise.find_or_create_by(name: "Shrugs", reps: 11, sets: 3, category: "Shoulders") #back
Exercise.find_or_create_by(name: "Bent Over Barbell Row", reps: 15, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Bent Over Rowing", reps: 20, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Bent Over Rowing Reversw", reps: 20, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Chin-ups", reps: 10, sets: 4, category: "Back")
Exercise.find_or_create_by(name: "Close-grip Lat Pull Down", reps: 20, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Deadlifts", reps: 10, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Deficit Deadlift", reps: 10, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Hip Raises", reps: 10, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "Incline Dumbbell Row", reps: 5, sets: 2, category: "Back")
Exercise.find_or_create_by(name: "Lat Pull Down", reps: 10, sets: 2, category: "Back")
Exercise.find_or_create_by(name: "Long-Pulley", reps: 10, sets: 5, category: "Back")
Exercise.find_or_create_by(name: "Pendelay Rows", reps: 15, sets: 5, category: "Back")
Exercise.find_or_create_by(name: "Rack Deadlift", reps: 10, sets: 5, category: "Back")
Exercise.find_or_create_by(name: "Superman", reps: 10, sets: 3, category: "Back")
Exercise.find_or_create_by(name: "V-Bar Pulldown", reps: 15, sets: 2, category: "Back") #arms
Exercise.find_or_create_by(name: "Axe Hold", reps: 10, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Barbell Triceps Extension", reps: 10, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Bench Press Narrow Grip", reps: 15, sets: 2, category: "Arms")
Exercise.find_or_create_by(name: "Biceps Curls With Cable", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Bicep Curls With Barbell", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Bicep Curls With Dumbell", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Biceps Curls With SZ-bar", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Body-Ups", reps: 10, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Close-grip Bench Press", reps: 15, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Deadhang", sets: 5, duration: 2, category: "Arms")
Exercise.find_or_create_by(name: "Dips", reps: 10, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Dumbbell Incline Curl", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "French Press", reps: 10, sets: 4, category: "Arms")
Exercise.find_or_create_by(name: "Hammercurls", reps: 10, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Military Press", reps: 15, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Pike Push Ups", reps: 20, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Preacher Curls", reps: 8, sets: 5, category: "Arms")
Exercise.find_or_create_by(name: "Push Ups", reps: 15, sets: 4, category: "Arms")
Exercise.find_or_create_by(name: "Seated Triceps Press", reps: 10, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Tricep Bench Press One Dumbell", reps: 15, sets: 4, category: "Arms")
Exercise.find_or_create_by(name: "Tricep Dips", reps: 20, sets: 3, category: "Arms")
Exercise.find_or_create_by(name: "Wall Pushup", reps: 10, sets: 5, category: "Arms")
# #












#
