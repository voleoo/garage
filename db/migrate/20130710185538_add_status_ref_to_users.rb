#rails g migration AddStatusRefToUsers status:references
class AddStatusRefToUsers < ActiveRecord::Migration
  def up
    add_reference :users, :status, index: true
    
    #add a foreign key
    execute <<-SQL
      ALTER TABLE users
        ADD CONSTRAINT fk_users_statuses
        FOREIGN KEY (status_id)
        REFERENCES statuses(id)
    SQL
  end
  
  def down
    remove_column :users, :status_id
    execute <<-SQL
      ALTER TABLE users
        DROP FOREIGN KEY fk_users_statuses
    SQL
  end
end
