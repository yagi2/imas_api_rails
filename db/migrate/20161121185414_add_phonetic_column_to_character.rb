class AddPhoneticColumnToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :phonetic, :string
  end
end
