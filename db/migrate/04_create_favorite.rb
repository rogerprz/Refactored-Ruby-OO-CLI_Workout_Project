class CreateFavorite < ActiveRecord::Migration[4.2]
  def change
  create_table :favorites do |t|
    t.integer :exercise_id
    
    end
  end
end
