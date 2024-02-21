class Restaurant < ApplicationRecord
  # one-to-many association + remove orphaned Review
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

# Sets up a callback to destroy all associated reviews before the restaurant is destroyed.
  before_destroy :destroy_reviews
end

private

def destroy_reviews
  self.reviews.destroy_all
end
