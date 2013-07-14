class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.integer :user_id, index: true
      t.integer :order_id, index: true

      t.timestamps
    end
  end
end
