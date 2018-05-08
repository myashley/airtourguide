require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Has Historical Knowledge/)
    expect(rendered).to match(//)
  end
end
