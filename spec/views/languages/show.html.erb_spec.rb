require 'rails_helper'

RSpec.describe "languages/show", type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :language_code => "Language Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Language Code/)
  end
end
