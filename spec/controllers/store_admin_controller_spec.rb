require 'rails_helper'

RSpec.describe StoreAdminController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #orders" do
    it "returns http success" do
      get :orders
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #invoice" do
    it "returns http success" do
      get :invoice
      expect(response).to have_http_status(:success)
    end
  end

end
