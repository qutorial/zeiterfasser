require 'rails_helper'

RSpec.describe "eintrags/edit", type: :view do
  before(:each) do
    @eintrag = assign(:eintrag, Eintrag.create!(
      :kosten_traeger => nil,
      :duration => 1,
      :comment => "MyString",
      :user => nil
    ))
  end

  it "renders the edit eintrag form" do
    render

    assert_select "form[action=?][method=?]", eintrag_path(@eintrag), "post" do

      assert_select "input[name=?]", "eintrag[kosten_traeger_id]"

      assert_select "input[name=?]", "eintrag[duration]"

      assert_select "input[name=?]", "eintrag[comment]"

      assert_select "input[name=?]", "eintrag[user_id]"
    end
  end
end
