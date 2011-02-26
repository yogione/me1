class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :location
      t.integer :zip
      t.integer :item_id
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
