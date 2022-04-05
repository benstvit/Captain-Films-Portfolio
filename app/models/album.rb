class Album < ApplicationRecord
  belongs_to :band
  has_many :tracks, dependent: :destroy
  validates :name, :genre, presence: true
end
