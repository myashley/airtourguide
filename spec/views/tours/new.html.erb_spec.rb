require 'rails_helper'

RSpec.describe "tours/new", type: :view do
  before(:each) do
    assign(:tour, Tour.new(
      :description => "MyText",
      :price => "9.99",
      :user => nil,
      :location => nil
    ))
  end

  it "renders new tour form" do
    render

    assert_select "form[action=?][method=?]", tours_path, "post" do

      assert_select "textarea[name=?]", "tour[description]"

      assert_select "input[name=?]", "tour[price]"

      assert_select "input[name=?]", "tour[user_id]"

      assert_select "input[name=?]", "tour[location_id]"
    end
  end
end
