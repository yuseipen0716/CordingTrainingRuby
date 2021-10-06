# キーボードから読み込んだ整数値をそのまま反復して表示するプログラムを作成せよ

# print '整数値: '
# text = gets.chomp
# puts "#{text}と入力しましたね。"

# 上記のコードでもできたけど、Rubyでは変数に代入する際の型宣言がなく、入力する際にちゃんと半角の整数値を入力してくれないとエラーがでるようにしてみた。
# gets.chompで拾ってくると""で囲われたString型になっているので、条件は以下のようにしてみた。もっといい感じに書けないか。また考える。

print '整数値: '
text = gets.chomp
if text == "#{text.to_i}"
    puts "#{text}と入力しましたね。"
else
    puts '整数値（半角）で入力されていません'
end
