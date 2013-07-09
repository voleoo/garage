class Brand < ActiveRecord::Base
  has_many :pictures, as: :imageable
  has_and_belongs_to_many :services
end
