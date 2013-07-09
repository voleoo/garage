class User < ActiveRecord::Base
  has_many :users_cars
  has_many :car, through: :users_cars

  has_one :authentication
  has_many :phone

  has_many :order

  has_many :performer

  belongs_to :role
  belongs_to :status

  has_many :picture, as: :imageable
end