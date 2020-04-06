class Restaurant < ApplicationRecord
    has_one :address
    has_many :meals
    has_many :orders

    accepts_nested_attributes_for :address
end