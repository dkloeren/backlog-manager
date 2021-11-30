class CreateWishlistConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlist_conditions do |t|
      t.text :description
      t.integer :status
      t.references :user_item, null: false, foreign_key: true
      t.decimal :target_price

      t.timestamps
    end
  end
end
