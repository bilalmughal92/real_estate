class AddContactNoToClients < ActiveRecord::Migration[5.1]
  def change
  	add_column :clients, :contact_no, :string
  end
end
