require 'rails_helper'

RSpec.describe(ArticlesController, type: :controller) do
  let!(:article) {create :article}
  describe "GET /articles" do
    it "routes to article#index" do
      get :index, format: :json
      pp response.body
      expect(response).to have_http_status(200)
    end

    context '#show' do
    it 'returns the book with the correct ID' do
      get :show, params: { id: 1 }
      puts response.body
      json_response = JSON.parse(response.body, symbolize_names: true)
      expect(json_response[:id]).to(eq(1))
    end
    end

    # it 'it return proper json' do 
    #   article = create :article
    #   patch :update
    #   pp response
    #   byebug
    # end
  end
end
