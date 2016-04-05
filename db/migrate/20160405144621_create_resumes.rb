class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name, limit: 30
      t.integer :age, limit: 3
      t.integer :phonenumber
      t.references :service_provider, index: true, foreign_key: true
      t.string :experience
      t.string :string

      t.timestamps null: false
    end
  end
end
