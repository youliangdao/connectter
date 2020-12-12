require 'rails_helper'

RSpec.describe "静的ページ", type: :system do
  describe "トップページ" do
    context "ページ全体" do
      before do
        visit root_path
      end

      it "「その気持ち伝えてみませんか？」の文字列が正しく存在することを確認" do
        expect(page).to have_content("その気持ち、伝えてみませんか")
      end
      it "正しいタイトルが表示されることを確認" do
        expect(page).to have_title full_title
      end
    end
  end

  describe "利用規約ページ" do
    before do
      visit page_path('terms')
    end

    it "利用規約の文字列が存在することを確認" do
      expect(page).to have_content("利用規約")
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title("利用規約")
    end
  end

  describe "プライバシーポリシーページ" do
    before do
      visit page_path('privacypolicy')
    end

    it "プライパシーポリシーの文字列が存在することを確認" do
      expect(page).to have_content("プライバシーポリシー")
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title("プライバシーポリシー")
    end
  end

  describe "ヘルプページ" do
    before do
      visit page_path('about')
    end

    it "connectterとは？の文字列が存在することを確認する" do
      expect(page).to have_content("connectterとは？")
    end
    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title("connectterとは？")
    end
  end
end
