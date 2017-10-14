class AddDescriptionToRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :description, :string
  end
end
