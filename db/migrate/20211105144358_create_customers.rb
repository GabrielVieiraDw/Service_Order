class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|

      t.string :customer_name
      t.string :customer_surname
      t.string :customer_address
      t.string :customer_phone
      t.timestamps
    end
  end
end
