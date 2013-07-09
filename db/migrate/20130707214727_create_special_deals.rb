class CreateSpecialDeals < ActiveRecord::Migration
  def change
    create_table :special_deals do |t|
      t.string :title
      t.integer :discount
      t.text :description
      t.datetime :end_date

      t.timestamps
    end
  end
end
