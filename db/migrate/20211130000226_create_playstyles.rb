class CreatePlaystyles < ActiveRecord::Migration[6.1]
  def change
    create_table :playstyles do |t|
      t.string :name
      t.text :desctription
      t.string :category
      t.text :image_url

      t.timestamps
    end
  end
end
