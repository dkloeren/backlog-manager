class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.text :image_url
      t.timestamps
    end
  end
end
