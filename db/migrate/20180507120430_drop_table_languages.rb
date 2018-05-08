class DropTableLanguages < ActiveRecord::Migration[5.1]
  def change
    drop_table :languages
  end
end
