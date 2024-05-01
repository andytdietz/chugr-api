class FixComments < ActiveRecord::Migration[7.1]
  def change
    change_column :comments, :user_id, :integer, null: false
    change_column :comments, :brewery_id, :string, null: false
  end
end
