class Track < ApplicationRecord
  belongs_to :album
  has_one_attached :audio
  validates :title, :audio, presence: true
end
