class RenameWeaponOnArena < ActiveRecord::Migration[5.2]
  def change
    rename_column :arenas, :character_1_weapn_id, :character_1_weapon_id
    rename_column :arenas, :character_2_weapn_id, :character_2_weapon_id
  end
end
