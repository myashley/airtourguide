class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :about_me
      t.text :intro_tour_guide
      t.decimal :fare_per_hour
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country_code
      t.string :postcode
      t.string :phone_number
      t.boolean :is_tour_guide
      t.boolean :is_photographer
      t.boolean :has_car
      t.string :has_historical_knowledge
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
