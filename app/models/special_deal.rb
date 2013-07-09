class SpecialDeal < ActiveRecord::Base
  has_one :order
  has_many :special_deal_statuses
end
