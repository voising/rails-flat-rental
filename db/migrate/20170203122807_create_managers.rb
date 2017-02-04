class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.string :linkedin_url
      t.string :facebook_url
      t.string :picture
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
