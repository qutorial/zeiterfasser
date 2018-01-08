require 'rails_helper'

RSpec.describe "Eintrags", type: :request do
  describe "GET /eintrags" do
    it "works! (now write some real specs)" do
      get eintrags_path
      expect(response).to have_http_status(200)
    end
  end
end
