class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.references :flat, foreign_key: true
      t.float :size

      t.timestamps
    end
  end
end
