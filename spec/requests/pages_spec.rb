require 'rails_helper'

RSpec.describe "静的ページ", type: :request do
  describe "connectterとは？ページ" do
    it "正常なレスポンスを返すこと" do
      get page_path('about')
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "利用規約ページ" do
    it "正常なレスポンスを返すこと" do
      get page_path('terms')
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "プライバシーポリシー" do
    it "正常なレスポンスを返すこと" do
      get page_path('privacypolicy')
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
