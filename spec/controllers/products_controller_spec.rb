require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index, params: { page: 1, size: 1, query: '', currency: 'USD' }
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      product = Product.create!(name: 'product 1', image: '', price: 10, currency: 'USD', quantity: 5)
      get :show, params: { id: product.to_param }
      expect(response).to be_successful
    end
  end
end
