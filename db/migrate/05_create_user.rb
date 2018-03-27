class CreateUser < ActiveRecord::Migration[4.2]
  def change
  create_table :users do |t|
    t.string :first_name
    t.string :last_name
    t.integer :weight
    t.integer :workout_id
    end
  end
end
