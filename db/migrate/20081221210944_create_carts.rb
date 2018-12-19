class CreateCarts < ActiveRecord::Migration[4.2]
  def self.up
    create_table :carts do |t|
      t.datetime :purchased_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :carts
  end
end
