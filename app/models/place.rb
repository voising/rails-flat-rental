class Place < ApplicationRecord
  has_many :flats_places
  has_many :flats, though: :flats_places
end
