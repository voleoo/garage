class AddPasswordDigestToAuthentication < ActiveRecord::Migration
  def up
    change_table :authentications do |t|
      t.string :password_digest
    end
  end
  
  def down
    remove_column :authentications, :password_digest
  end
end
