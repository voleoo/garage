class AddFkStatusIdToUsers < ActiveRecord::Migration
  def up    
    #add a foreign key
    execute <<-SQL
      ALTER TABLE users
        ADD CONSTRAINT fk_users_statuses
        FOREIGN KEY (status_id)
        REFERENCES statuses(id)
    SQL
  end
  
  def down
    execute <<-SQL
      ALTER TABLE users
        DROP FOREIGN KEY fk_users_statuses
    SQL
  end
end
