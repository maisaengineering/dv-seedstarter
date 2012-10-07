require 'spec_helper'

describe "advertisements/index" do
  before(:each) do
    assign(:advertisements, [
      stub_model(Advertisement,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(Advertisement,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of advertisements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
