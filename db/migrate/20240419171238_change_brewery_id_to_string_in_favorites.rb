class ChangeBreweryIdToStringInFavorites < ActiveRecord::Migration[7.1]
  def change
    change_column :favorites, :brewery_id, :string
  end
end
