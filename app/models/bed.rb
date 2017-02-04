class Bed < ApplicationRecord
  has_many :beds_room
  has_many :rooms, though: :beds_room

  enum size: %i(single double queen king california_king)
end
