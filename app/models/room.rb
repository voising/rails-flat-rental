class Room < ApplicationRecord
  belongs_to :flat

  has_many :beds_room
  has_many :beds, through: :beds_room
end
