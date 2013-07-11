class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  validates :path, :title, presence: true
end
