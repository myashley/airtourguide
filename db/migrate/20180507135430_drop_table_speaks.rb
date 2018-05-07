class DropTableSpeaks < ActiveRecord::Migration[5.1]
  def change
    drop_table :speaks
  end
end
