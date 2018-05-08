require 'rails_helper'

RSpec.describe "languages/index", type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :language_code => "Language Code"
      ),
      Language.create!(
        :language_code => "Language Code"
      )
    ])
  end

  it "renders a list of languages" do
    render
    assert_select "tr>td", :text => "Language Code".to_s, :count => 2
  end
end
