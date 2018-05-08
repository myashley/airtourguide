require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :description => "MyText",
        :is_profile => false,
        :user => nil
      ),
      Photo.create!(
        :description => "MyText",
        :is_profile => false,
        :user => nil
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
