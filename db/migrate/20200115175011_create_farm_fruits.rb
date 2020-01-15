class CreateFarmFruits < ActiveRecord::Migration[5.2]
  def change
    create_table :farm_fruits do |t|
      t.belongs_to :farm, foreign_key: true
      t.belongs_to :fruit, foreign_key: true

      t.timestamps
    end
  end
end
