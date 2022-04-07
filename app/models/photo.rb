class Photo < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image
  validates :title, :image, :category, presence: true
  validates :title, uniqueness: true
end
