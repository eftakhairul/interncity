class CreateMentors < ActiveRecord::Migration
  def self.up
    create_table :mentors do |t|
      t.string :name

      t.timestamps
    end
  end
end
