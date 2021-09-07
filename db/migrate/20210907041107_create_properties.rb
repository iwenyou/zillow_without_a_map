class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :sale_type
      t.string :sold_date
      t.string :property_type
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :price
      t.integer :beds
      t.string :location
      t.integer :sqft
      t.integer :lot_size
      t.integer :year_built
      t.integer :days_on_market
      t.integer :price_per_sqft
      t.integer :hoa
      t.string :source
      t.integer :mls
      t.boolean :favorite
      t.boolean :interested
      t.float :latitude
      t.float :longitude
      t.string :open_house_start_time
      t.string :open_house_end_time

      t.timestamps
    end
  end
end
