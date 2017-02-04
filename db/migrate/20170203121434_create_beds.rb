class CreateBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :beds do |t|
      t.integer :size

      t.timestamps
    end
  end
end
