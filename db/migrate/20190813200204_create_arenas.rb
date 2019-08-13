class CreateArenas < ActiveRecord::Migration[5.2]
  def change
    create_table :arenas do |t|
      t.belongs_to :character_1
      t.belongs_to :character_2
      t.timestamps
    end
  end
end
