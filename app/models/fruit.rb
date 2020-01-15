class Fruit < ApplicationRecord
    has_many :farm_fruits
    has_many :orders
    has_many :restaurants, through: :orders
    has_many :farms, through: :farm_fruits
end
