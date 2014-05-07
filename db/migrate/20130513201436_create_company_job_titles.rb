class CreateCompanyJobTitles < ActiveRecord::Migration
  def self.up
    create_table :companies_job_titles, :id => false do |t|
      t.integer :company_id
      t.integer :job_title_id

      t.timestamps
    end

    add_index(:companies_job_titles, [:company_id, :job_title_id],  :unique => true)
  end
end
