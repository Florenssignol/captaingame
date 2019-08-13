class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :life
      t.integer :attack
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
