class CreateMealVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_variants do |t|
      t.string :size
      t.decimal :price
      t.references :meal
      t.timestamps
    end
  end
end
