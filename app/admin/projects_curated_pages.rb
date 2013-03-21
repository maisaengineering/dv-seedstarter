ActiveAdmin.register ProjectsCuratedPage, :as =>  "Project ad links" do

  index do
    column :project do |pcp|
      pcp.project.name
    end
    column "Ad links", :curated_page do |pcp|
      pcp.curated_page.name
    end
    default_actions
  end

  form do |f|
      f.inputs "Details" do
        f.input :project
        f.input :curated_page, :label => "Project ad"
      	f.input :description
        f.input :description_html
      end
		f.actions do
		f.action :submit, :label=>"Create project ad"
		f.action :cancel, :label => "Cancel"
  		end
    end

end