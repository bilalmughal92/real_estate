class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :record_id
      t.integer :client_id
      t.date :order_date
      t.string :status

      t.timestamps
    end
  end
end
