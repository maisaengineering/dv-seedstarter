#encoding:utf-8
module Reports
  module Users
    class Projects
      class << self
        def all_project_owners
          @collection = User.joins(:projects).where('projects.visible is true').includes(:projects)

          @csv = CSV.generate(:col_sep => ',') do |csv_string|
            csv_string << [
               'Project ID',
               'Project Name',
               'Project successful?',
               'Name of Project Owner',
               'Email of Project Owner',
               'State',
               'City',
               'Telephone'
            ]

            @collection.each do |resource|
              resource.projects.each do |project|
                csv_string << [
                  project.id,
                  project.name,
                  (project.successful? ? 'Sim' : 'Nao'),
                  resource.name,
                  resource.email,
                  resource.address_state,
                  resource.address_city,
                  resource.phone_number
                ]
              end
            end
          end
        end
      end
    end
  end
end
