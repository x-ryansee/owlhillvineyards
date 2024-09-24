class CreateOliveOils < ActiveRecord::Migration[7.0]
  def change
    create_table :olive_oils do |t|
      t.string :olive_species
      t.integer :bottle_size
      t.integer :vintage
      t.string :other_ingredients
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
