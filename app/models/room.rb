class Room < ApplicationRecord
  belongs_to :flat
  has_and_belongs_to_many :rooms
end
