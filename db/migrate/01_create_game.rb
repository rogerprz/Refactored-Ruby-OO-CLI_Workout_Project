class CreateGame < ActiveRecord::Migration[4.2]
  def change
  create_table :game do |t|
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
