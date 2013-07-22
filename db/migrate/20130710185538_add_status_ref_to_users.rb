#rails g migration AddStatusRefToUsers status:references
class AddStatusRefToUsers < ActiveRecord::Migration
  def up
    add_reference :users, :status, index: true
  end
  
  def down
    remove_column :users, :status_id
  end
end
