class AddLatitudeAndLongitudeToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_column :favorites, :latitude, :decimal, precision: 10, scale: 6, default: nil
    add_column :favorites, :longitude, :decimal, precision: 10, scale: 6, default: nil
  end
end
