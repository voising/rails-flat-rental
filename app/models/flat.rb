class Flat < ApplicationRecord
  belongs_to :user
  # belongs_to :manager
  has_many :rooms

  has_many :flats_services
  has_many :services, through: :flats_services

  has_many :flats_places
  has_many :places, through: :flats_places

  has_many :pictures, as: :picturable, dependent: :destroy

  enum kind: %i(shared independent)

  # @param [Symbol] named
  def add_relation(named:, with:)
    raise ArgumentError unless %i(places services pictures).include?(named)

    with.each do |model|
      entry = named.to_s.classify.constantize
             .where(id: model[:id])
             .first_or_create(model)

      unless self.send(named).where(id: entry.id).exists?
        self.send(named) << entry
      end
    end
  end
end
