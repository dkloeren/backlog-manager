class CreateSharedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :shared_items do |t|
      t.references :user_friend, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
