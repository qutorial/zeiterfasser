require 'rails_helper'

RSpec.describe "kosten_traegers/show", type: :view do
  before(:each) do
    @kosten_traeger = assign(:kosten_traeger, KostenTraeger.create!(
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
  end
end
