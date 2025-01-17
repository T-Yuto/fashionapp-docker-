class CreateDownImages < ActiveRecord::Migration[5.2]
  def change
    create_table :down_images do |t|
      t.string :name
      t.text :image, null: false
      t.integer :item_id, foreign_key: true
      t.timestamps
    end
  end
end
