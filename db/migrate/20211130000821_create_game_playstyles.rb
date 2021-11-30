class CreateGamePlaystyles < ActiveRecord::Migration[6.1]
  def change
    create_table :game_playstyles do |t|
      t.string :name
      t.references :game, null: false, foreign_key: true
      t.references :playstyle, null: false, foreign_key: true
      t.text :image_url

      t.timestamps
    end
  end
end
