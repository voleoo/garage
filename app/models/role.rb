class Role < ActiveRecord::Base
  attr_accessible :role
  has_many :users

  validates :role, 
    uniqueness: true,
  	format: { with: /\A[A-Za-z0-9\-_]{3,15}\Z/, :message => "Only (3-15) Latin characters, digits, '_' and '-'" }

end
