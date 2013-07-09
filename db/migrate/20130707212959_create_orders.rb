class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :car_id
      t.string :deadline
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
