class ChangeTypeColumn < ActiveRecord::Migration
  def up
    #change type column
    execute <<-SQL
      ALTER TABLE `orders`
      CHANGE `deadline` `deadline` DATETIME NOT NULL 
    SQL
  end
  
  def down
    #change type column
    execute <<-SQL
      ALTER TABLE `orders`
      CHANGE `deadline` `deadline` VARCHAR(255) NOT NULL
    SQL
  end
end
