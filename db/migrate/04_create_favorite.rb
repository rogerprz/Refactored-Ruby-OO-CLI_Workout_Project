class CreateFavorite < ActiveRecord::Migration[4.2]
  def change
  create_table :favorites do |t|
    t.integer :ex_id
    t.integer :wo_id
    end
  end
end
