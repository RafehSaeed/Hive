class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      
      t.string :description
      t.references :service_provider, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
