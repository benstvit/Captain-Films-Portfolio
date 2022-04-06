class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :title, :image, :category, presence: true
  validates :title, uniqueness: true
end
