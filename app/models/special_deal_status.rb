class SpecialDealStatus < ActiveRecord::Base
  belongs_to :status
  belongs_to :special_deal
end
