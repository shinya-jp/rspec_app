require 'rails_helper'

# PostsControllerをテスト対象とする
RSpec.describe "Posts", type: :request do
# describe 新規投稿ページの関するテストであることを示す
	describe '新規投稿ページ' do
# context 新規投稿ページの正しく表示されることに関するものをまとめる
		context "新規投稿ページが正しく表示される" do
# before 今回はget posts_new_pathで新規投稿ページを表示する処理をitの前に行う
			before do
				get posts_new_path
			end
			it 'リクエストは200 OKとなること' do
# resopone.status この記述によりレスポンスステータスが受け取る事ができる
				expect(response.status).to eq 200
			end
		end
	end
end
