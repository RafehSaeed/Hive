class CreateBuisnesses < ActiveRecord::Migration
  def change
    create_table :buisnesses do |t|
      
      t.string :username
      t.string :email
      t.string :password
      t.string :buisnessname
      t.string :address

      t.timestamps null: false
    end
  end
end
