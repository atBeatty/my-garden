class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :comments
      t.integer :water
      t.integer :temp
      t.integer :light
      t.integer :soil
      t.integer :garden_id
      t.integer :user_id
    end
  end
end
