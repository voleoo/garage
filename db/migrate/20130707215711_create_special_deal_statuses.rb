class CreateSpecialDealStatuses < ActiveRecord::Migration
  def change
    create_table :special_deal_statuses do |t|
      t.integer :special_deal_id, index: true
      t.integer :status_id, index: true
      t.integer :number_times, index: true

      t.timestamps
    end
  end
end
