class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|

      t.string :type
      t.text :description
      t.text :issues
      t.timestamps
    end
  end
end
