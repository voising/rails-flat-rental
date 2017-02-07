class Place < ApplicationRecord
  has_many :flats_places
  has_many :flats, through: :flats_places
end
