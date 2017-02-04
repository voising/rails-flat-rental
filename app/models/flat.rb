class Flat < ApplicationRecord
  belongs_to :user
  # belongs_to :manager
  has_many :rooms
  has_and_belongs_to_many :services
  has_and_belongs_to_many :places

  enum kind: %i(shared private)
end
