class CreateUserSkateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :user_skate_shops do |t|
      t.references :user, null: false, foreign_key: true
      t.references :skate_shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
