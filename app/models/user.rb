class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :favorites
  has_many :comments
  has_one_attached :profile_picture

  def profile_picture_url
    if profile_picture.attached?
      Rails.application.routes.url_helpers.url_for(profile_picture)
    else
      nil
    end
  end
end
