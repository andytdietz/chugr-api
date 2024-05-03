class RemoveProfilePictureFromUsersAgain < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :profile_picture, :binary
  end
end
