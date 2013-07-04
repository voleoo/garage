class AddDescriptionToCars < ActiveRecord::Migration
  def up
    change_table :cars do |t|
      t.text :description
    end
  end

  def down
    remove_column :cars, :description
  end
end
