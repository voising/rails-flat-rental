class CreateFlatsPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :flats_places do |t|
      t.references :flat, foreign_key: true
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
