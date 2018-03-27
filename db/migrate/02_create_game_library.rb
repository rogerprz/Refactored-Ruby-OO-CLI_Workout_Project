class CreateGameLibraries < ActiveRecord::Migration[5.1]
  def change
  create_table :libraries do |t|
      t.integer :rating
      t.integer :profile_id
      t.integer :games_id
      t.string :review
    end
  end
end
