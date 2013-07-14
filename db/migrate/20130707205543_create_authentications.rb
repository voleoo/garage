class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.integer :user_id, index: true
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
