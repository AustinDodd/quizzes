class Song < ApplicationRecord
  validates :song, presence: true
  validates :artist, presence: true
end
