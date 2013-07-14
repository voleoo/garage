class Brand < ActiveRecord::Base
  has_many :pictures, as: :imageable
  has_and_belongs_to_many :services, join_table: :services_brands

  validates :brand, presence: true
end
