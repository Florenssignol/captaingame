class AddWeaponToArena < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :character_1_weapn_id, :integer 
    add_column :arenas, :character_2_weapn_id, :integer
  end
end
