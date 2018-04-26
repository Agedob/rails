require 'rails_helper'

RSpec.describe MainController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #signin" do
    it "returns http success" do
      get :signin
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #secrets" do
    it "returns http success" do
      get :secrets
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #spare" do
    it "returns http success" do
      get :spare
      expect(response).to have_http_status(:success)
    end
  end

end
