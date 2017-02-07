class Service < ApplicationRecord
  has_many :flats_services
  has_many :flats, through: :flats_services

  default_scope { order('name') }
end
