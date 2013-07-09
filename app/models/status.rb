class Status < ActiveRecord::Base
  has_many :users
  has_many :special_deal_statuses
end
