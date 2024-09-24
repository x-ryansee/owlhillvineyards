class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :varietal
      t.integer :bottle_size
      t.string :color
      t.integer :vintage
      t.text :about
      t.string :image_url
      t.integer :bold
      t.integer :tannic
      t.integer :dry
      t.integer :acidic

      t.timestamps
    end
  end
end
