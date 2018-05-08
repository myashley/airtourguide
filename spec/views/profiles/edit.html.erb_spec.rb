require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :about_me => "MyText",
      :intro_tour_guide => "MyText",
      :fare_per_hour => "9.99",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country_code => "MyString",
      :postcode => "MyString",
      :phone_number => "MyString",
      :is_tour_guide => false,
      :is_photographer => false,
      :has_car => false,
      :has_historical_knowledge => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "textarea[name=?]", "profile[about_me]"

      assert_select "textarea[name=?]", "profile[intro_tour_guide]"

      assert_select "input[name=?]", "profile[fare_per_hour]"

      assert_select "input[name=?]", "profile[street_address]"

      assert_select "input[name=?]", "profile[city]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[country_code]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "input[name=?]", "profile[phone_number]"

      assert_select "input[name=?]", "profile[is_tour_guide]"

      assert_select "input[name=?]", "profile[is_photographer]"

      assert_select "input[name=?]", "profile[has_car]"

      assert_select "input[name=?]", "profile[has_historical_knowledge]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
