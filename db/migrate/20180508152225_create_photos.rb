class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.text :image_data
      t.text :description
      t.boolean :is_profile
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
