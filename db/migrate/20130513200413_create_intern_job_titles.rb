class CreateInternJobTitles < ActiveRecord::Migration
  def self.up
    create_table :interns_job_titles, :id => false do |t|
      t.integer :intern_id
      t.integer :job_title_id

      t.timestamps
    end

    add_index(:interns_job_titles, [:intern_id, :job_title_id],  :unique => true)
  end
end
