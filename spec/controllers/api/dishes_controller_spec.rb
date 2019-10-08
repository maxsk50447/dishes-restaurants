require 'rails_helper'

RSpec.describe Api::DishesController, type: :controller do
  let(:dish) { Dish.create(name: 'Crab')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    
    it "returns http success" do
      get :show, params: { id: dish.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show_restaurants" do
    it "returns http success" do
      get :show_restaurants, params: { dish_id: dish.id }
      expect(response).to have_http_status(:success)
    end
  end
end