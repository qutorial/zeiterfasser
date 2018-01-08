require 'rails_helper'

RSpec.describe "kosten_traegers/new", type: :view do
  before(:each) do
    assign(:kosten_traeger, KostenTraeger.new(
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new kosten_traeger form" do
    render

    assert_select "form[action=?][method=?]", kosten_traegers_path, "post" do

      assert_select "input[name=?]", "kosten_traeger[code]"

      assert_select "input[name=?]", "kosten_traeger[name]"
    end
  end
end
