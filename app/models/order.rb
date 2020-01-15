class Order < ApplicationRecord
    belongs_to :restaurant
    belongs_to :farm
    belongs_to :fruit
end
