class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :contact_person
      t.string :contact_number
      t.string :email
      t.integer :industry_id

      t.timestamps
    end

    add_index :companies, :email
    add_index :companies, :industry_id
  end
end
