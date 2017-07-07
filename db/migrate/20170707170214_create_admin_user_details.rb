class CreateAdminUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_user_details do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
