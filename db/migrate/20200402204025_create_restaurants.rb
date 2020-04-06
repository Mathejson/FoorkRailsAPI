class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :website_url
      t.string :phone_number
      t.string :working_hours
      t.string :image_url
      t.timestamps
    end
  end
end
