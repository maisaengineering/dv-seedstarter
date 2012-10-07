require 'spec_helper'

describe "advertisements/edit" do
  before(:each) do
    @advertisement = assign(:advertisement, stub_model(Advertisement,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit advertisement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => advertisements_path(@advertisement), :method => "post" do
      assert_select "input#advertisement_title", :name => "advertisement[title]"
      assert_select "textarea#advertisement_body", :name => "advertisement[body]"
    end
  end
end
