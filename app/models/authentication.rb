class Authentication < ActiveRecord::Base
  #attr_accessible :email, :password, :password_confirmation

  belongs_to :user

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\Z/, :message => "Only emails allowed" }

  validates :password, 
    length: { in: 6..255 },
    presence: true,
    confirmation: true

  before_create do |auth|
    role_id = Role.select("id").where("role = 'user'").limit(1)
    status_id = Status.select("id").where("status = 'User'").limit(1)
    auth.user_id = User.create(role_id: role_id, status_id: status_id).id
  end
end
