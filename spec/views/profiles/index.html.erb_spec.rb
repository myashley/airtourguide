require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :about_me => "MyText",
        :intro_tour_guide => "MyText",
        :fare_per_hour => "9.99",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :country_code => "Country Code",
        :postcode => "Postcode",
        :phone_number => "Phone Number",
        :is_tour_guide => false,
        :is_photographer => false,
        :has_car => false,
        :has_historical_knowledge => "Has Historical Knowledge",
        :user => nil
      ),
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :about_me => "MyText",
        :intro_tour_guide => "MyText",
        :fare_per_hour => "9.99",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :country_code => "Country Code",
        :postcode => "Postcode",
        :phone_number => "Phone Number",
        :is_tour_guide => false,
        :is_photographer => false,
        :has_car => false,
        :has_historical_knowledge => "Has Historical Knowledge",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country Code".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Has Historical Knowledge".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
