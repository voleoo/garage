class Authentication < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :user_id
  has_secure_password

  belongs_to :user

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\Z/, :message => "Only emails allowed" }

  validates :password, 
    length: { in: 6..255 },
    presence: true,
    confirmation: true

  before_create do |a|
    unless a.user_id
      role_id = Role.select("id").where("role = 'user'").limit(1)
      status_id = Status.select("id").where("status = 'user'").limit(1)
      a.user_id = User.create(role_id: role_id.first.id, status_id: status_id.first.id).id
    end
  end
end