class CreateUsersServices < ActiveRecord::Migration
  def change
    create_table :users_services do |t|
      t.integer :user_id, index: true
      t.integer :service_id, index: true

      t.timestamps
    end
  end
end
