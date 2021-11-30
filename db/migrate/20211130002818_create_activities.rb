class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :image_url
      t.integer :category
      t.text :description

      t.timestamps
    end
  end
end
