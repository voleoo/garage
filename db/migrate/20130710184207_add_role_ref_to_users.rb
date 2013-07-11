#rails g migration AddRoleRefToUsers role:references
class AddRoleRefToUsers < ActiveRecord::Migration
	def up
    add_reference :users, :role, index: true

    #add a foreign key
    execute <<-SQL
      ALTER TABLE users
        ADD CONSTRAINT fk_users_groups
        FOREIGN KEY (role_id)
        REFERENCES roles(id)
    SQL
  end
  
  def down
  	remove_column :users, :role_id
    execute <<-SQL
      ALTER TABLE users
        DROP FOREIGN KEY fk_users_roles
    SQL
  end
end
