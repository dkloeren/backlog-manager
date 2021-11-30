class CreateItemKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :item_keywords do |t|
      t.references :keyword, null: false, foreign_key: true
      t.references :game, null: true, foreign_key: true
      t.references :activity, null: true, foreign_key: true
      t.references :game_playstyle, true: false, foreign_key: true

      t.timestamps
    end
  end
end
