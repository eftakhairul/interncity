class CreateJobTitles < ActiveRecord::Migration
  def self.up
    create_table :job_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
