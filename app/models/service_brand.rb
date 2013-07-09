class ServiceBrand < ActiveRecord::Base
  has_many :pictures, as: :imageable
end
