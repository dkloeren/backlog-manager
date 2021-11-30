class CreateCreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :create_games do |t|
      t.string :title
      t.string :publisher
      t.string :developer
      t.references :genre, null: true, foreign_key: true
      t.references :console, null: true, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
