require 'rails_helper'

RSpec.describe "kosten_traegers/index", type: :view do
  before(:each) do
    assign(:kosten_traegers, [
      KostenTraeger.create!(
        :code => "Code",
        :name => "Name"
      ),
      KostenTraeger.create!(
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of kosten_traegers" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
