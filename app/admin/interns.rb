ActiveAdmin.register Intern do
  index do
    column :name
    column :contact_number
    column :email
    column "Jobs" do |intern|
      (intern.job_titles.map{ |p| p.name }).join(', ').html_safe
    end
    column :graduation_year
    column :linkedin_address
    column :major
    column :university
    column :created_at
    column :updated_at
    default_actions
  end


  show do |ad|
    attributes_table do
      row :name
      row :contact_number
      row :email
      row "Jobs" do |intern|
        (intern.job_titles.map{ |p| p.name }).join(', ').html_safe
      end
      row :graduation_year
      row :linkedin_address
      row :major
      row :university
      row :created_at
      row :updated_at
    end
  end
end
