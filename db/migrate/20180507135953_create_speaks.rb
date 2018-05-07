class CreateSpeaks < ActiveRecord::Migration[5.1]
  def change
    create_table :speaks do |t|
      t.references :user, foreign_key: true
      t.references :language, foreign_key: true
    end
  end
end
