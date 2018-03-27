class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
  create_table :profiles do |t|
      t.string :email
      t.integer :library_id
      t.boolean :status
      t.string :gamertag
    end
  end
end
