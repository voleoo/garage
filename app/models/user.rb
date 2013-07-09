class User < ActiveRecord::Base
  has_many :users_cars
  has_many :cars, through: :users_cars
  has_many :pictures, as: :imageable
  has_many :orders 
  has_many :performers
  belongs_to :status
  has_many :phones
  has_one :authentication
  has_many :users_services
  has_many :services, through: :users_services
  belongs_to :role
end