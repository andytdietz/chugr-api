class ChangeCommentsTableUserIdAndBreweryId < ActiveRecord::Migration[7.1]
  def up
    remove_foreign_key :comments, :breweries
    remove_foreign_key :comments, :users
  end
end
