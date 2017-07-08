class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :city
      t.string :town
      t.string :area
      t.string :society
      t.string :block
      t.string :house_no
      t.date   :date
      t.string :marla
      t.string :square_foot
      t.string :status

      t.timestamps
    end
  end
end
