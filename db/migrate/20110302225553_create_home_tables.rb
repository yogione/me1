class CreateHomeTables < ActiveRecord::Migration
  def self.up
    create_table :home_tables do |t|
      t.integer :item_id
      t.float :store1_price
      t.float :store2_price
      t.float :store3_price

      t.timestamps
    end
  end

  def self.down
    drop_table :home_tables
  end
end
