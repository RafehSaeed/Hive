class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :firstname
      t.string :lastname
      t.boolean :verified
      t.string :address
      t.string :postalcode


      t.timestamps null: false
    end
  end
end
