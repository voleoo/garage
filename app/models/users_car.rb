class UsersCar < ActiveRecord::Base
	attr_accessible :user_id, :car_id
  
  belongs_to :user
  belongs_to :car

  accepts_nested_attributes_for :car
end
