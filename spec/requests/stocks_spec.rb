require 'rails_helper'

RSpec.describe "Stocks", type: :request do

  # it "should get new" do
  #   get new_stock_url
  #   assert_response :success
  # end
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
