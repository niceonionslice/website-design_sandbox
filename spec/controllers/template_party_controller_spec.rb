require 'rails_helper'

RSpec.describe TemplatePartyController, type: :controller do

  describe "GET #demo1" do
    it "returns http success" do
      get :demo1
      expect(response).to have_http_status(:success)
    end
  end

end
