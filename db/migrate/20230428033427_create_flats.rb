class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price_per_night
      t.integer :number_of_guests
      t.integer :stars
      t.boolean :pet_friendly

      t.timestamps
    end
  end
end
