describe '四則演算' do
# describe四則演算のテストのグループ
	context '足し算' do
# context足し算のテストをまとめている
		it '1 + 1 は 2 になる' do
# itテストと具体的な内容を記述
			expect(1 + 1).to eq 2
# expectは処理内容などを記述する。toは期待している値「〜であること」を示している
# eq（イコール）は期待している内容を記述する
		end
	end
	context '足し算' do
		it '1 + 1 は 2 になる' do
			expect(1 + 1).to eq 2
		end
	end
end

# コマンドは rspec spec/test_spec.rb