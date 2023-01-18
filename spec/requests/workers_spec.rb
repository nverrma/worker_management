require 'rails_helper'

RSpec.describe "Workers", type: :request do

  let!(:worker) {create(:worker)}
  describe "GET /index" do
    it "qasf" do
      get "/"
      expect(assigns(:workers)).to eq([worker])
    end
  end
  describe "GET #show" do
    it "shows details @worker" do
      get "/workers/#{worker.id}"
      expect(response).to render_template(:show)
    end
  end 
  
  describe "GET /new" do
    it "renders a successful response" do
      get new_worker_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      get edit_worker_url(worker)
      expect(response).to be_successful
    end
  end
end
