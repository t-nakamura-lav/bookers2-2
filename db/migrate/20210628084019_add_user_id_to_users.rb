class AddUserIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :users_id, :string
  end
end
