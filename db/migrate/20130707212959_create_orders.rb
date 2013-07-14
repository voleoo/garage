class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, index: true
      t.integer :car_id, index: true
      t.string :deadline
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
