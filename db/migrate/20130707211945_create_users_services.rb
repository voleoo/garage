class CreateUsersServices < ActiveRecord::Migration
  def change
    create_table :users_services do |t|
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
