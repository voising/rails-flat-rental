class Service < ApplicationRecord
  has_many :flats_service
  has_many :flats, through: :flats_service
end
