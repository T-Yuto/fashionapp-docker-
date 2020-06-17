class CreateGroupDownImages < ActiveRecord::Migration[5.2]
  def change
    create_table :group_down_images do |t|
      t.integer :group_id, foreign_key: true
      t.integer :down_image_id, foreign_key: true
      t.timestamps
    end
  end
end
