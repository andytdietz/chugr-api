class AddFieldsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :profile_picture, :string
    add_column :users, :bio, :text
  end
end
