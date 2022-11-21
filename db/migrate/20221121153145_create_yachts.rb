class CreateYachts < ActiveRecord::Migration[7.0]
  def change
    create_table :yachts do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_per_day
      t.integer :length
      t.integer :capacity
      t.integer :cabin
      t.integer :crew
      t.integer :speed

      t.timestamps
    end
  end
end
