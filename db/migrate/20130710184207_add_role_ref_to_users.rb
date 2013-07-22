#rails g migration AddRoleRefToUsers role:references
class AddRoleRefToUsers < ActiveRecord::Migration
  def up
    add_reference :users, :role, index: true
  end
  
  def down
    remove_column :users, :role_id
  end
end
