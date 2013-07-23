class Service < ActiveRecord::Base
  attr_accessible :service, :brand_ids
  
  has_many :users_services
  has_and_belongs_to_many :brands, join_table: :services_brands

  validates :service, presence: true
end
