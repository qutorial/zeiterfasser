require 'rails_helper'

RSpec.describe "eintrags/show", type: :view do
  before(:each) do
    @eintrag = assign(:eintrag, Eintrag.create!(
      :kosten_traeger => nil,
      :duration => 2,
      :comment => "Comment",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(//)
  end
end
