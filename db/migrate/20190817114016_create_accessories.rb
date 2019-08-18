class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.integer :weapon, default: 0
      t.integer :shields, default: 0
      t.timestamps
    end
  end
end
