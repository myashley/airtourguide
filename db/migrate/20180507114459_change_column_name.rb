class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :languages, :language_code, :name
  end
end
