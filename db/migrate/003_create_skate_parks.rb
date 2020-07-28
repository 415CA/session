class CreateSkateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :skate_parks do |t|
      t.string :name
      t.string :address
      t.string :borough
      t.string :description
      t.integer :rating
      t.string :google_map

      t.timestamps
    end
  end
end
