class CreateConsoles < ActiveRecord::Migration[6.1]
  def change
    create_table :consoles do |t|
      t.string :name
      t.string :short
      t.text :image_url

      t.timestamps
    end
  end
end
