class FixCommentsTable < ActiveRecord::Migration[7.1]
  def change
    remove_index :comments, name: "index_comments_on_brewery_id"
    remove_index :comments, name: "index_comments_on_user_id"
  end
end
