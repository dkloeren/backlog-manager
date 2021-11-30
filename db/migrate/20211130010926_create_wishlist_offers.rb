class CreateWishlistOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlist_offers do |t|
      t.string :seller
      t.references :user_item, null: false, foreign_key: true
      t.decimal :current_price
      t.decimal :discount
      t.string :location
      t.string :information
      t.decimal :best_price
      t.date :best_price_date

      t.timestamps
    end
  end
end
