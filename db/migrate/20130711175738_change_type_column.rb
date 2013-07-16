class ChangeTypeColumn < ActiveRecord::Migration
  def up
    #change type column
    execute <<-SQL
      ALTER TABLE `orders`
      CHANGE `deadline` `deadline` DATETIME NULL 
    SQL
  end
  
  def down
    #change type column
    execute <<-SQL
      ALTER TABLE `orders`
      CHANGE `deadline` `deadline` VARCHAR(255) NULL
    SQL
  end
end
