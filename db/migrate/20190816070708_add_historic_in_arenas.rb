class AddHistoricInArenas < ActiveRecord::Migration[5.2]
  def change
    add_column :arenas, :historic, :text
  end
end
