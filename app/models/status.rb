class Status < ActiveRecord::Base
  has_many :users
  has_many :special_deal_statuses

  validates :status, format: { with: /\A[A-Za-z0-9-_]{3,15}\Z/, :message => "Only (3-15) Latin characters, digits, '_' and '-'" }

end
