class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :life
      t.integer :attack
      t.text :description
      t.integer :defeat, default: 0
      t.integer :victory, default: 0
      t.integer :experience, default: 0

      t.timestamps
    end
  end
end