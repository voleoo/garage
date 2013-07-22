class Car < ActiveRecord::Base
	attr_accessible :vim
	
  has_many :users_cars
  has_many :users, through: :users_cars
  has_many :orders
  has_many :pictures, as: :imageable

  validates :vim, length: { is: 16 }

  accepts_nested_attributes_for :users
end
