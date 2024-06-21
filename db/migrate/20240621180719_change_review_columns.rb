class ChangeReviewColumns < ActiveRecord::Migration[7.1]
  def change
    # Remove foreign key constraint
    remove_foreign_key :reviews, column: :brewery_id
    change_column :reviews, :user_id, :integer
    change_column :reviews, :brewery_id, :string
  end
end
