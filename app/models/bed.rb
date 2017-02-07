class Bed < ApplicationRecord
  has_many :beds_rooms
  has_many :rooms, through: :beds_rooms

  enum size: %i(single double queen king california_king)
end
