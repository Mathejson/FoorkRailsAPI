class OrderItem < ApplicationRecord
    belongs_to :user
    belongs_to :order
    has_one :meal
end
