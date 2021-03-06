class Phone < ActiveRecord::Base
  attr_accessible :user_id, :phone, :type_number
  belongs_to :user

  validates :phone, format: { with: /\A[\+][0-9]{8,12}\Z/, :message => "Only phone format +380000000000" }
end
