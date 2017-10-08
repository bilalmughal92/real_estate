class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
    	t.string :full_name
    	t.string :email
    	t.string :contact
    	t.string :password

      t.timestamps
    end
  end
end
