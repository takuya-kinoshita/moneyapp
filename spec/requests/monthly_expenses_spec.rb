require 'rails_helper'

RSpec.describe "MonthlyExpenses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/monthly_expenses/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/monthly_expenses/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/monthly_expenses/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/monthly_expenses/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
