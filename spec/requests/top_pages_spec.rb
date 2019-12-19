require 'rails_helper'

RSpec.describe "TopPages", type: :request do
  describe "GET /" do
    it "正常にレスポンスを返す" do
      get root_path
      expect(response).to be_successful
    end
  end
end
