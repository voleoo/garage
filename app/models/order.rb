class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  belongs_to :special_deal

  has_many :performers
  has_many :pictures, as: :imageable

  #validates :deadline, format: { with: /\A[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])\s([0-1]\d|2[0-3])(:[0-5]\d){2}\Z/, :message => "Only data format YYYY-MM-DD HH:MM:SS" }
  #validates :deadline, format: { with: /\A[0]\Z/, :message => "Only data format YYYY-MM-DD HH:MM:SS" }
  validates :deadline, format: { with: /\A[\+][0-9]{8,12}\Z/, :message => "Only phone format +380000000000" }
  validates :price, numericality: true
end
