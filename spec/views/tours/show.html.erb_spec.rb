require 'rails_helper'

RSpec.describe "tours/show", type: :view do
  before(:each) do
    @tour = assign(:tour, Tour.create!(
      :description => "MyText",
      :price => "9.99",
      :user => nil,
      :location => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
