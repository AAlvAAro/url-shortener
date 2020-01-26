require 'rails_helper'

RSpec.describe UrlsController, type: :controller do
  let(:url) { create(:url) }

  describe 'GET #index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'redirects to the original URL if it exists' do
      get :show, params: { id: url.slug }

      expect(response).to redirect_to(url.original)
    end

    it 'redirects to home page if the URL does not exist' do
      get :show, params: { id: 'something' }

      expect(response).to redirect_to(root_path)
    end
  end

  describe 'POST #create' do
    xit 'returns http success' do
      post :create, params: { url: { original: 'http://google.com' } }
      expect(response).to have_http_status(:success)
    end
  end
end
