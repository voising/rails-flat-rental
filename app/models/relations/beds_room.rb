class BedsRoom < ApplicationRecord
  belongs_to :bed
  belongs_to :room
end
