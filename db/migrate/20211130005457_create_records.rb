class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :status
      t.references :list_item, null: false, foreign_key: true
      t.float :decistion_time

      t.timestamps
    end
  end
end
