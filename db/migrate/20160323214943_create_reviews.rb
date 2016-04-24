class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.decimal :rating
      t.text :comment, limit: 40
      t.date :date
      t.references :buisness, index: true , foreign_key: true
      t.references :service_provider, index:true ,foreign_key: true
      t.timestamps null: false

    end
  end
end
