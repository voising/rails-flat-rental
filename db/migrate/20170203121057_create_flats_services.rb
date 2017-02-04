class CreateFlatsServices < ActiveRecord::Migration[5.0]
  def change
    create_table :flats_services do |t|
      t.references :flat, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
