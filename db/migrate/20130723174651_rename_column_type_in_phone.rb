class RenameColumnTypeInPhone < ActiveRecord::Migration
  def up
    rename_column :phones, :type, :type_number
  end
  
  def down
    rename_column :phones, :type_number, :type
  end
end
