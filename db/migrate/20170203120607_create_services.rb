class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :icon
      t.string :description

      t.timestamps
    end
  end
end
