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
    before { allow_any_instance_of(UrlInspectorJob).to receive(:perform) { true } }

    it 'return success with a valid URL' do
      post :create, params: { url: { original: 'http://google.com' } }

      expect(flash[:notice]).to eq('Your shortened URL has been created')
    end

    it 'return error with a valid URL' do
      post :create, params: { url: { original: 'this is not a url' } }

      expect(flash[:alert]).to eq('The URL you are trying to convert is not valid. Try with an http or https URL')
    end
  end
end
