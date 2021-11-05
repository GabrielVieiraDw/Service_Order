class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipments do |t|

      t.string :maker
      t.string :description
      t.integer :quantity
      t.boolean :availability
      t.text :motive
      t.timestamps
    end
  end
end
