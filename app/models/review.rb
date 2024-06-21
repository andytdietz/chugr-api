class Review < ApplicationRecord
  belongs_to :user

  validates :brewery_id, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :user_id, uniqueness: { scope: :brewery_id, message: "has already reviewed this brewery" }
end
