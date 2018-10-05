require 'rails_helper'

RSpec.describe StoreAdminController, type: :controller do
  render_views

  describe "GET home" do
    it "renders the home template with admin layout" do
      get :home
      expect(response).to render_template("home")
      expect(response).to render_template("layouts/admin")

      assert_select "h1", "Flatiron Widgets: Admin"
      assert_select "h2", "Welcome Flatiron Admin"
    end
  end

  describe "GET orders" do
    it "renders the orders template with order_administration layout" do
      get :orders
      expect(response).to render_template("orders")
      expect(response).to render_template("layouts/order_administration")

      assert_select "h1", "Flatiron Widgets: Open Orders"
      assert_select "h2", "Welcome to Flatiron Open Orders"
      assert_select "ol"
    end
  end

  describe "GET invoice" do
    it "renders the invoice template without any layout" do
      get :invoice
      expect(response).to render_template("invoice")
      assert_template layout: false

      assert_select "h1", "Your Invoice"
    end
  end
end
