require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :traveller => nil,
        :tour_guide => nil,
        :tour => nil,
        :has_paid => false,
        :rating => "9.99",
        :review => "MyText"
      ),
      Booking.create!(
        :traveller => nil,
        :tour_guide => nil,
        :tour => nil,
        :has_paid => false,
        :rating => "9.99",
        :review => "MyText"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
