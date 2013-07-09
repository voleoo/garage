class AddSpecialDealsIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :special_deals_id, :integer
  end
end
