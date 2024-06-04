class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
