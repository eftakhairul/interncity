class CreateMajors < ActiveRecord::Migration
  def self.up
    create_table :majors do |t|
      t.string :name

      t.timestamps
    end
  end
end
