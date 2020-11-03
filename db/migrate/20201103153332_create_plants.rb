class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :title
      t.string :name
      t.string :species

      t.timestamps
    end
  end
end
