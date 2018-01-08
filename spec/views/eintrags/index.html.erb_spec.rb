require 'rails_helper'

RSpec.describe "eintrags/index", type: :view do
  before(:each) do
    assign(:eintrags, [
      Eintrag.create!(
        :kosten_traeger => nil,
        :duration => 2,
        :comment => "Comment",
        :user => nil
      ),
      Eintrag.create!(
        :kosten_traeger => nil,
        :duration => 2,
        :comment => "Comment",
        :user => nil
      )
    ])
  end

  it "renders a list of eintrags" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
