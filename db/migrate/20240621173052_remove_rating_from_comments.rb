class RemoveRatingFromComments < ActiveRecord::Migration[7.1]
  def change
    remove_column :comments, :rating, :integer
  end
end
