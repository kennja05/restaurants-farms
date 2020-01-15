class FarmFruit < ApplicationRecord
  belongs_to :farm
  belongs_to :fruit
end
