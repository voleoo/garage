class Car < ActiveRecord::Base
	has_many :users_cars
	has_many :users, through: :users_cars
	has_many :orders
	has_many :pictures, as: :imageable

	validates :vim, length: { is: 16 }
end
