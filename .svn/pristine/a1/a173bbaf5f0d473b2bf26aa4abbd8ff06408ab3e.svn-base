require "spec_helper"

describe SolicitudesController do
  describe "routing" do

    it "routes to #index" do
      get("/solicitudes").should route_to("solicitudes#index")
    end

    it "routes to #new" do
      get("/solicitudes/new").should route_to("solicitudes#new")
    end

    it "routes to #show" do
      get("/solicitudes/1").should route_to("solicitudes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/solicitudes/1/edit").should route_to("solicitudes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/solicitudes").should route_to("solicitudes#create")
    end

    it "routes to #update" do
      put("/solicitudes/1").should route_to("solicitudes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/solicitudes/1").should route_to("solicitudes#destroy", :id => "1")
    end

  end
end
