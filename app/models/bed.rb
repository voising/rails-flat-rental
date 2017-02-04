class Bed < ApplicationRecord
  has_and_belongs_to_many :rooms

  enum size: %i(single double queen king california_king)
end
