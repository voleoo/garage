class SpecialDeal < ActiveRecord::Base
  has_one :order
  has_many :special_deal_statuses

  validates :title, :discount, presence: true
  validates :end_date, format: { with: /\A[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])\s([0-1]\d|2[0-3])(:[0-5]\d){2}\Z/, :message => "Only data format YYYY-MM-DD HH:MM:SS" }

end
