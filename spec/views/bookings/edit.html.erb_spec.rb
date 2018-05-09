require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :traveller => nil,
      :tour_guide => nil,
      :tour => nil,
      :has_paid => false,
      :rating => "9.99",
      :review => "MyText"
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[traveller_id]"

      assert_select "input[name=?]", "booking[tour_guide_id]"

      assert_select "input[name=?]", "booking[tour_id]"

      assert_select "input[name=?]", "booking[has_paid]"

      assert_select "input[name=?]", "booking[rating]"

      assert_select "textarea[name=?]", "booking[review]"
    end
  end
end
