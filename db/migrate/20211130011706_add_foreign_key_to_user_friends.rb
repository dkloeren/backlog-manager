class AddForeignKeyToUserFriends < ActiveRecord::Migration[6.1]
  add_foreign_key :user_friends, :users, column: :user_id
  add_foreign_key :user_friends, :users, column: :friend_id
end
