class ChangeBreweryIdBackToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :favorites, :brewery_id, "integer USING CAST(brewery_id AS integer)"
  end
end
