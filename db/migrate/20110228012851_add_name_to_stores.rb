class AddNameToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :name, :string
  end

  def self.down
    remove_column :stores, :name
  end
end
