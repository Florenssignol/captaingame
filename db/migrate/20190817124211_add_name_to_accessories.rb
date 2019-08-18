class AddNameToAccessories < ActiveRecord::Migration[5.2]
  def change
    add_column :accessories, :name, :string
    rename_column :accessories, :shields, :shield
  end
end
