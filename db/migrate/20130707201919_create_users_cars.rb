class CreateUsersCars < ActiveRecord::Migration
  def change
    create_table :users_cars do |t|
      t.belongs_to :user, index: true
      t.belongs_to :car, index: true

      t.timestamps
    end
  end
end
