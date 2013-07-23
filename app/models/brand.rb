class Brand < ActiveRecord::Base
  attr_accessible :brand, :service_ids

  has_many :pictures, as: :imageable
  has_and_belongs_to_many :services, join_table: :services_brands

  validates :brand, presence: true
end
