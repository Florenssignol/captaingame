class AddStatsToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :victory_percentage, :float, default: 0
  end
end
