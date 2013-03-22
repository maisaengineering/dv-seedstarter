ActiveAdmin.register CuratedPage, :as => "Ad" do

  controller.authorize_resource :class => CuratedPage
  scope :visible
  scope :not_visible

  index do
    column :name
    column :permalink
    column :visible
    default_actions
  end

  #form :partial => "form", :class => CuratedPage
  # form :html => {:multipart => true} do |f|
  #   f.inputs do
  #     f.input :name
  #     f.input :description
  #     f.input :logo, :as => :file
  #     f.input :video_url
  #   end
  #
  #   f.buttons do
  #     f.submit
  #   end
  # end
end
