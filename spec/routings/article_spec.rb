require 'rails_helper'

RSpec.describe '/articles routes', type: :routing do 
	it 'routes to article#index' do 
		expect(get '/articles').to route_to('articles#index')
	end
end	