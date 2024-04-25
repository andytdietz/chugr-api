class AddAddressToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_column :favorites, :address, :string
  end
end
