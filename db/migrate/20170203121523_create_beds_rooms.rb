class CreateBedsRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :beds_rooms do |t|
      t.references :bed, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
