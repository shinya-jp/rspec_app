require 'rails_helper'

# describe:Postモデルをテスト対象と示している
RSpec.describe Post, type: :model do
# context:データが正しく保存できることに関するテストであることを示している
  context "データが正しく保存される" do
 # before:テスト用のデータを生成している
  	before do
  		@post = Post.new
  		@post.title = "Hello WebCamp"
  		@post.content = "今日も晴れです"
  		@post.save
  	end
  	it "全て入力してあるので保存される" do
# expect(@post).to:saveされているデータが入っている変数を示している
# be_valid: @postに正しくデータが保存されているか確認する
  		expect(@post).to be_valid
  	end
  end
  context "データが正しく保存されない" do
  	before do
  		@post = Post.new
  		@post.title = ""
  		@post.content = "今日も晴れです"
  		@post.save
  	end
  	it "titleが入力されていないので保存されない" do
# be_valid:上記とは逆で@postに正しくデータが保存されていないことを確認する
  		expect(@post).to be_invalid
# expect~title]:@postに対してエラーメッセージはerrorsに配列として入り、その中でも今回はtitleカラムを対象としている為
# include~:present: trueのバリデーションをかけた場合のエラーメッセージにcan't be blankが含まれているか確認
  		expect(@post.errors[:title]).to include("can't be blank")
  	end
  end
end
