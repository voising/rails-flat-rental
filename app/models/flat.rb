class Flat < ApplicationRecord
  belongs_to :user
  # belongs_to :manager
  has_many :rooms

  has_many :flats_services
  has_many :services, through: :flats_service

  has_many :flats_places
  has_many :places, through: :flats_places

  has_many :pictures, as: :picturable, dependent: :destroy

  enum kind: %i(shared independent)
end
