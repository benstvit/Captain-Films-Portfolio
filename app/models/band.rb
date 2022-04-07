class Band < ApplicationRecord
  belongs_to :user, optional: true
  has_many :albums
  has_one_attached :image
  has_many :tracks, through: :album
  validates :name, presence: true
end
