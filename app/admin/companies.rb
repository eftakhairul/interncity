ActiveAdmin.register Company do
  index do
    column :name
    column :website
    column "Jobs" do |company|
      (company.job_titles.map{ |p| p.name }).join(', ').html_safe
    end
    column :contact_person
    column :contact_number
    column :email
    column :created_at
    column :updated_at
    default_actions
  end


  show do |ad|
    attributes_table do
      row :name
      row :website
      row "Jobs" do |company|
        (company.job_titles.map{ |p| p.name }).join(', ').html_safe
      end
      row :contact_person
      row :contact_number
      row :email
      row :created_at
      row :updated_at
    end
  end

end
