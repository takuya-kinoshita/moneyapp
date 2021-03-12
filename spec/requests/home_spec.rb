require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
   it 'respond successfully' do
    get '/index'

    expect(response).to have_http_status
  end
  end
end
