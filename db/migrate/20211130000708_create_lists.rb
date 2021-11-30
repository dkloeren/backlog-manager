class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.references :list_category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :enabled
      t.text :description
      t.text :image_url

      t.timestamps
    end
  end
end
