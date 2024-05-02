class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :favorites
  has_many :comments
  has_one_attached :profile_picture do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
  # has_many :breweries, through: :favorites
end
