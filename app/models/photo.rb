class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :title, :photo, presence: true
  validates :title, uniqueness: true
end
