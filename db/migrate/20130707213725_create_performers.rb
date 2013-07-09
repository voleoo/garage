class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.integer :user_id
      t.integer :order_id

      t.timestamps
    end
  end
end
