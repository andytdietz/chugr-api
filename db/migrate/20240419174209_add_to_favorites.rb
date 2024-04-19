class AddToFavorites < ActiveRecord::Migration[7.1]
  def change
    add_column :favorites, :name, :string
    add_column :favorites, :city, :string
    add_column :favorites, :brewery_type, :string
    add_column :favorites, :website_url, :string
    add_column :favorites, :image_url, :string
  end
end
