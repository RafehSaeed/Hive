class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      
      t.string :name
      t.decimal :minimumwage
      t.timestamps null: false
      t.references :service, index: true, foreign_key: true
    end
  end
end
