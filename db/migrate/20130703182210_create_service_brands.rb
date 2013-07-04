class CreateServiceBrands < ActiveRecord::Migration
  def change
    create_table :service_brands do |t|
      t.string :brand

      t.timestamps
    end
  end
end
