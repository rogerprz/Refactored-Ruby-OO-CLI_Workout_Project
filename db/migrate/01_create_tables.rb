class CreateExercise < ActiveRecord::Migration[4.2]
  def change
  create_table :exercises do |t|
  #id
    t.string :name
    t.integer :sets
    t.integer :reps
    t.integer :duration
    end
  end
end

class CreateExerciseToWorkout < ActiveRecord::Migration[4.2]
  def change
  create_table :exercisetoworkouts do |t|
    t.integer :ex_id
    t.integer :workout_id
    end
  end
end

class CreateWorkout < ActiveRecord::Migration[4.2]
  def change
    #id
  create_table :workouts do |t|
    t.string :name
    t.integer :duration
    end
  end
end



class CreateFavorite < ActiveRecord::Migration[4.2]
  def change
  create_table :favorites do |t|
    t.integer :workout_id
    end
  end
end



class CreateUser < ActiveRecord::Migration[4.2]
  def change
  create_table :users do |t|
    t.string :first_name
    t.string :last_name
    t.integer :weight
    end
  end
end
