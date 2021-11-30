class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :status
      t.references :list_item, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
