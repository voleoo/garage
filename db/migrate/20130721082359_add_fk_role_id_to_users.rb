class AddFkRoleIdToUsers < ActiveRecord::Migration
  def up
    #add a foreign key
    execute <<-SQL
      ALTER TABLE users
        ADD CONSTRAINT fk_users_roles
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
    SQL
  end
  
  def down
    execute <<-SQL
      ALTER TABLE users
        DROP FOREIGN KEY fk_users_roles
    SQL
  end
end
