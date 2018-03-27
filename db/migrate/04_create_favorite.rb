class CreateFavorite < ActiveRecord::Migration[4.2]
  def change
  create_table :favorites do |t|
    t.integer :workout_id
    end
  end
end
