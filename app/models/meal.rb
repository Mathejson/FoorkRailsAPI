class Meal < ApplicationRecord
    belongs_to :restaurant
    has_many :meal_variants

    accepts_nested_attributes_for :meal_variants
end
