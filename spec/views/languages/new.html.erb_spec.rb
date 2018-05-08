require 'rails_helper'

RSpec.describe "languages/new", type: :view do
  before(:each) do
    assign(:language, Language.new(
      :language_code => "MyString"
    ))
  end

  it "renders new language form" do
    render

    assert_select "form[action=?][method=?]", languages_path, "post" do

      assert_select "input[name=?]", "language[language_code]"
    end
  end
end
