require 'rails_helper'

RSpec.describe "eintrags/new", type: :view do
  before(:each) do
    assign(:eintrag, Eintrag.new(
      :kosten_traeger => nil,
      :duration => 1,
      :comment => "MyString",
      :user => nil
    ))
  end

  it "renders new eintrag form" do
    render

    assert_select "form[action=?][method=?]", eintrags_path, "post" do

      assert_select "input[name=?]", "eintrag[kosten_traeger_id]"

      assert_select "input[name=?]", "eintrag[duration]"

      assert_select "input[name=?]", "eintrag[comment]"

      assert_select "input[name=?]", "eintrag[user_id]"
    end
  end
end
