class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.text :description
      t.decimal :price
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
