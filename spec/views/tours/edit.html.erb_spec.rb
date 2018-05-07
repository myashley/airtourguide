require 'rails_helper'

RSpec.describe "tours/edit", type: :view do
  before(:each) do
    @tour = assign(:tour, Tour.create!(
      :description => "MyText",
      :price => "9.99",
      :user => nil,
      :location => nil
    ))
  end

  it "renders the edit tour form" do
    render

    assert_select "form[action=?][method=?]", tour_path(@tour), "post" do

      assert_select "textarea[name=?]", "tour[description]"

      assert_select "input[name=?]", "tour[price]"

      assert_select "input[name=?]", "tour[user_id]"

      assert_select "input[name=?]", "tour[location_id]"
    end
  end
end
