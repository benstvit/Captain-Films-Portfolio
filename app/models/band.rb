class Band < ApplicationRecord
  belongs_to :user
  has_many :albums
  has_many :tracks, through: :album, dependent: :destroy
  validates :name, presence: true
end
