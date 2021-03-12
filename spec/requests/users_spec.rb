require 'rails_helper'

RSpec.describe UsersController, type: :request do
  describe "#index" do
   #正常にレススを返すこと
   it "responds successfully" do
     get '/users' 
     expect(response).to have_http_status(200) 
#     expect(response).to be_success
   end 
  end
end
