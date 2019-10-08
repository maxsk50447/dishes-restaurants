require 'rails_helper'

RSpec.describe Api::RestaurantsController, type: :controller do
  let(:restaurant) { Restaurant.create(name: 'Seafood-Land')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    
    it "returns http success" do
      get :show, params: { id: restaurant.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show_restaurants" do
    it "returns http success" do
      get :show_dishes, params: { restaurant_id: restaurant.id }
      expect(response).to have_http_status(:success)
    end
  end
end