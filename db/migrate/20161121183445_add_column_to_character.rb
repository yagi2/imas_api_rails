class AddColumnToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :name, :string
  end
end
