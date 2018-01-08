require "rails_helper"

RSpec.describe KostenTraegersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kosten_traegers").to route_to("kosten_traegers#index")
    end

    it "routes to #new" do
      expect(:get => "/kosten_traegers/new").to route_to("kosten_traegers#new")
    end

    it "routes to #show" do
      expect(:get => "/kosten_traegers/1").to route_to("kosten_traegers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kosten_traegers/1/edit").to route_to("kosten_traegers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kosten_traegers").to route_to("kosten_traegers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kosten_traegers/1").to route_to("kosten_traegers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kosten_traegers/1").to route_to("kosten_traegers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kosten_traegers/1").to route_to("kosten_traegers#destroy", :id => "1")
    end

  end
end
