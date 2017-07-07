class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :contact
      t.integer :user_type_id

      t.timestamps
    end
  end
end
