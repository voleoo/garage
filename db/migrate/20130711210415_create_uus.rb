class CreateUus < ActiveRecord::Migration
  def change
    create_table :uus do |t|
      t.string :desx

      t.timestamps
    end
  end
end
