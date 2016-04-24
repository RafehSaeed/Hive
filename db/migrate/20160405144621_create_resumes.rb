class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name, limit: 30
      t.integer :age, limit: 3
      t.string :phonenumber
      t.references :service_provider, index: true, foreign_key: true
      t.string :experience #Need to be converted to a seperate class

      t.timestamps null: false
    end
  end
end
