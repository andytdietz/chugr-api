class RemoveIndexesFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_index :reviews, name: "index_reviews_on_brewery_id"
    remove_index :reviews, name: "index_reviews_on_user_id"
  end
end
