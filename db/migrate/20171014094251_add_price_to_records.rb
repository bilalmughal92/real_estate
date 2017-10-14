class AddPriceToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :price, :string
  end
end
