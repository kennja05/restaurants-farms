class Farm < ApplicationRecord
    has_many :farm_fruits
    has_many :fruits, through: :farm_fruits
end
