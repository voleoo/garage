class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :description, :role_id, :status_id

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

  validates :role_id, :status_id, presence: true

  accepts_nested_attributes_for :cars
end