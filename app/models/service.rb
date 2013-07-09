class Service < ActiveRecord::Base
  has_many :users_services
  has_and_belongs_to_many :brands
end
