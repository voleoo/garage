class Car < ActiveRecord::Base
	has_many :users_cars
	has_many :user, through: :users_cars
end
