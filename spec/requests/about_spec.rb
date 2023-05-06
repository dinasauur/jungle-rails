require 'rails_helper'

RSpec.describe "Abouts", type: :request do
  describe "GET /hello" do
    it "returns http success" do
      get "/about/hello"
      expect(response).to have_http_status(:success)
    end
  end

end
