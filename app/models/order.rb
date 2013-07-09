class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :special_deal

  has_many :performers
  has_many :pictures, as: :imageable
end