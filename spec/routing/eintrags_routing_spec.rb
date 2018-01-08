require "rails_helper"

RSpec.describe EintragsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/eintrags").to route_to("eintrags#index")
    end

    it "routes to #new" do
      expect(:get => "/eintrags/new").to route_to("eintrags#new")
    end

    it "routes to #show" do
      expect(:get => "/eintrags/1").to route_to("eintrags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eintrags/1/edit").to route_to("eintrags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/eintrags").to route_to("eintrags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/eintrags/1").to route_to("eintrags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/eintrags/1").to route_to("eintrags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eintrags/1").to route_to("eintrags#destroy", :id => "1")
    end

  end
end
