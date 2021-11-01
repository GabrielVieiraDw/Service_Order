class CreateWorkOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :work_orders do |t|

      t.string :service_order
      t.string :client
      t.string :address
      t.string :phone_number
      t.timestamps
    end
  end
end
