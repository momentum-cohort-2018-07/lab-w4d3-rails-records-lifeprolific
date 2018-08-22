class Album < ApplicationRecord
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :year_released, presence: true
end
