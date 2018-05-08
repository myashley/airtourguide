require 'rails_helper'

RSpec.describe "tours/index", type: :view do
  before(:each) do
    assign(:tours, [
      Tour.create!(
        :description => "MyText",
        :price => "9.99",
        :user => nil,
        :location => nil
      ),
      Tour.create!(
        :description => "MyText",
        :price => "9.99",
        :user => nil,
        :location => nil
      )
    ])
  end

  it "renders a list of tours" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
