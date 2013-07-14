class AddColumnPathToPictures < ActiveRecord::Migration
  def up
    change_table :pictures do |t|
      t.string :path
    end
  end

  def down
    remove_column :pictures, :path
  end
end
