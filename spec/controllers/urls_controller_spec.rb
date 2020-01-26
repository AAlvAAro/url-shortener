require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    xit "returns http success" do
      post :create, params: { url: { original: 'http://google.com' } }
      expect(response).to have_http_status(:success)
    end
  end
end
