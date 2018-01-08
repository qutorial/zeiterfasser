require 'rails_helper'

RSpec.describe "KostenTraegers", type: :request do
  describe "GET /kosten_traegers" do
    it "works! (now write some real specs)" do
      get kosten_traegers_path
      expect(response).to have_http_status(200)
    end
  end
end
