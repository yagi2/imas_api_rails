class AddProductionColumnToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :production, :string
  end
end
