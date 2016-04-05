class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :password
      

      t.timestamps null: false
    end
  end
end