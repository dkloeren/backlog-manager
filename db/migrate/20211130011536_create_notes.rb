class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :list_item, null: true, foreign_key: true
      t.references :record, null: true, foreign_key: true
      t.references :goal, null: true, foreign_key: true
      t.references :user_item, null: true, foreign_key: true
      t.references :shared_item, null: true, foreign_key: true
      t.references :wishlist_offer, null: true, foreign_key: true
      t.references :wishlist_condition, null: true, foreign_key: true

      t.timestamps
    end
  end
end
