require 'rails_helper'

RSpec.describe Article, type: :model do
  #let(:article) {create :article}

  it 'test the factory is valid' do 
   # expect(article).to be_valid
  end

  it 'invalid title' do 
    new_article = build(:article,title: nil)
    expect(new_article).not_to be_valid
    expect(new_article.errors.full_messages).to eq(["Title can't be blank"])
  end

  it do 
    get :show params: {article: {1}}
  end
end
