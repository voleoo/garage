class CreateServicesBrands < ActiveRecord::Migration
  def change
    create_table :services_brands, id: false do |t|
      t.references :service, index: true
      t.references :brand, index: true
    end
    add_index :services_brands, [:service_id, :brand_id]
  end
end
