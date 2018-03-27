class CreateGames < ActiveRecord::Migration[5.1]
  def change
  create_table :games do |t|
      t.string :title
      t.string :release_date
      t.string :ESRB
      t.string :genre
      t.integer :company_id
      # t.string :description
      t.string :platform
      t.string :overview
    end
  end
end
