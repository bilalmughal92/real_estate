class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :client_id
      t.integer :record_id
      t.integer :order_id
      t.text :msg

      t.timestamps
    end
  end
end
