class Restaurant < ApplicationRecord
    has_many :orders
    has_many :fruits, through: :orders
    has_many :farms, through: :orders
end
