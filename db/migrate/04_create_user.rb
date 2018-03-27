class CreateUsers < ActiveRecord::Migration[5.1]
  def change
  create_table :users do |t|
      t.string :name
      t.string :country
      t.string :state

      t.integer :profile_id
    end
  end
end
