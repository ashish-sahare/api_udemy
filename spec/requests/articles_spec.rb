require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET /articles" do
    it "routes to article#index" do
      get '/articles'
      expect(response).to have_http_status(200)
    end

    it 'it return proper json' do 
      get :show, params: {id: 1}, as: :json
      pp response.body
    end
  end
end
