class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :character1
      t.string :character2

      t.timestamps
    end
  end
end
