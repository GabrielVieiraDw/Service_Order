class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|

      t.string :maker
      t.string :model
      t.string :plate_number
      t.integer :year
      t.float :depart_km
      t.float :arrival_km
      t.boolean :availability
      t.text :motive
      t.timestamps
    end
  end
end
