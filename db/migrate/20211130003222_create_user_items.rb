class CreateUserItems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_items do |t|
      t.references :user, null: true, foreign_key: true
      t.references :game, null: true, foreign_key: true
      t.references :game_playstyle, null: true, foreign_key: true
      t.references :activity, null: true, foreign_key: true
      t.references :item_category, null: true, foreign_key: true
      t.boolean :favourite
      t.integer :status
      t.boolean :owned

      t.timestamps
    end
  end
end
