require 'rails_helper'

RSpec.describe "kosten_traegers/edit", type: :view do
  before(:each) do
    @kosten_traeger = assign(:kosten_traeger, KostenTraeger.create!(
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit kosten_traeger form" do
    render

    assert_select "form[action=?][method=?]", kosten_traeger_path(@kosten_traeger), "post" do

      assert_select "input[name=?]", "kosten_traeger[code]"

      assert_select "input[name=?]", "kosten_traeger[name]"
    end
  end
end
