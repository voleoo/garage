class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :user_id
      t.string :phone
      t.string :type

      t.timestamps
    end
  end
end
