require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :image_data => "MyText",
      :description => "MyText",
      :is_profile => false,
      :user => nil
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "textarea[name=?]", "photo[image_data]"

      assert_select "textarea[name=?]", "photo[description]"

      assert_select "input[name=?]", "photo[is_profile]"

      assert_select "input[name=?]", "photo[user_id]"
    end
  end
end
