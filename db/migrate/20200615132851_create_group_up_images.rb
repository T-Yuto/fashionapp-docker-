class CreateGroupUpImages < ActiveRecord::Migration[5.2]
  def change
    create_table :group_up_images do |t|
      t.integer :group_id, foreign_key: true
      t.integer :up_image_id, foreign_key: true
      t.timestamps
    end
  end
end
