class CreateInterns < ActiveRecord::Migration
  def self.up
    create_table :interns do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.string :linkedin_address, :null => true
      t.integer :university_id
      t.integer :major_id
      t.integer :graduation_year, :default => 2013
      t.boolean :is_active, :default => true
      t.timestamps
    end

    add_index :interns, :email
    add_index :interns, :university_id
    add_index :interns, :major_id
  end
end
