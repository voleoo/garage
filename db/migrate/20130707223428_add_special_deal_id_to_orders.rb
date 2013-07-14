class AddSpecialDealIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :special_deal_id, :integer
  end
end
