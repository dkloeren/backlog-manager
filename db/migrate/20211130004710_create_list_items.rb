class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.boolean :enabled
      t.integer :rank
      t.integer :priority
      t.integer :status
      t.references :list, null: false, foreign_key: true
      t.references :user_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
