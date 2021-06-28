class RemoveUsersIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :users_id, :string
  end
end
