require 'rails_helper'

RSpec.describe "Designs", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/designs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
