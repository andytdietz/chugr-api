class AddToBreweriesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :breweries, :longitude, :float
    add_column :breweries, :latitude, :float
    add_column :breweries, :address, :string
  end
end
