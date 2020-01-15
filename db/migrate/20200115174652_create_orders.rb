class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :farm_id
      t.integer :fruit_id
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
