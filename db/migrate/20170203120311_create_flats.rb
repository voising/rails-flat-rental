class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.references :user, foreign_key: true
      t.integer :manager_id, foreign_key: true
      t.integer :kind
      t.text :description
      t.text :map_description
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
