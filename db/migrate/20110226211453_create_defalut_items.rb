class CreateDefalutItems < ActiveRecord::Migration
  def self.up
    create_table :defalut_items do |t|
      t.integer :item_id
      t.integer :qty

      t.timestamps
    end
  end

  def self.down
    drop_table :defalut_items
  end
end
