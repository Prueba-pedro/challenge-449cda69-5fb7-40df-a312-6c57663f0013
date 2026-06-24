require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      product = Product.create! valid_attributes
      get :show, params: { id: product.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Product' do
        expect {
          post :create, params: { product: valid_attributes }
        }.to change(Product, :count).by(1)
      end
      it 'returns a 201 status code' do
        post :create, params: { product: valid_attributes }
        expect(response).to have_http_status(:created)
      end
    end
    context 'with invalid params' do
      it 'returns a 422 status code' do
        post :create, params: { product: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) {
        { name: 'New Product', price: 20, stock: 200, category: 'New Category' }
      }
      it 'updates the requested product' do
        product = Product.create! valid_attributes
        put :update, params: { id: product.to_param, product: new_attributes }
        product.reload
        expect(product.name).to eq('New Product')
      end
      it 'returns a success response' do
        product = Product.create! valid_attributes
        put :update, params: { id: product.to_param, product: valid_attributes }
        expect(response).to be_successful
      end
    end
    context 'with invalid params' do
      it 'returns a 422 status code' do
        product = Product.create! valid_attributes
        put :update, params: { id: product.to_param, product: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested product' do
      product = Product.create! valid_attributes
      expect {
        delete :destroy, params: { id: product.to_param }
      }.to change(Product, :count).by(-1)
    end
  end

  def valid_attributes
    { name: 'Product1', price: 10, stock: 100, category: 'Category1' }
  end

  def invalid_attributes
    { name: nil, price: -10, stock: 100, category: 'Category1' }
  end
end