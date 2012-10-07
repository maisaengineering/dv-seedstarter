require 'spec_helper'

describe "advertisements/new" do
  before(:each) do
    assign(:advertisement, stub_model(Advertisement,
      :title => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new advertisement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => advertisements_path, :method => "post" do
      assert_select "input#advertisement_title", :name => "advertisement[title]"
      assert_select "textarea#advertisement_body", :name => "advertisement[body]"
    end
  end
end
