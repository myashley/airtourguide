class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :traveller
      t.references :tour_guide
      t.references :tour, foreign_key: true
      t.boolean :has_paid, default: false
      t.decimal :rating
      t.text :review

      t.timestamps
    end
  end
end
