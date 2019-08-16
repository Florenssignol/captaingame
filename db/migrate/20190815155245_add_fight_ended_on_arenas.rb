class AddFightEndedOnArenas < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :fight_ended, :boolean, default: false
  end
end
