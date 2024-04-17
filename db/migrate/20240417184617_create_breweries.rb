class CreateBreweries < ActiveRecord::Migration[7.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :website_url
      t.string :image_url
      t.string :city
      t.string :brewery_type

      t.timestamps
    end
  end
end
