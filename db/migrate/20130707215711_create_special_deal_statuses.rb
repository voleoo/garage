class CreateSpecialDealStatuses < ActiveRecord::Migration
  def change
    create_table :special_deal_statuses do |t|
      t.integer :special_deal_id
      t.integer :status_id
      t.integer :number_times

      t.timestamps
    end
  end
end
