class AddToFavoritesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :favorites, :state, :string
  end
end
