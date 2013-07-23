class RenameColumnInAuthenticationLoginToEmail < ActiveRecord::Migration
  def up
    rename_column :authentications, :login, :email
  end
  
  def down
    rename_column :authentications, :email, :login
  end
end
