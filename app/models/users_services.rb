class UsersServices < ActiveRecord::Base
  belongs_to :service
  belongs_to :user
end
