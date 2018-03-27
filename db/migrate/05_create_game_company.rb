class CreateGameCompany < ActiveRecord::Migration[5.1]
  def change
  create_table :game_companies do |t|
      t.string :name
      t.string :founded
      t.string :headquarters
      t.integer :games_id
    end
  end
end
