# 名前の姓と名とを個別にキーボードから読み込んで、挨拶を行うプログラムを作成せよ

# 実行例
# 姓: 柴田
# 名: 望洋
# こんにちは柴田望洋さん。

# 姓・名をそれぞれ入力してもらい、取得したデータを変数に格納
print "姓: "
last_name = gets.chomp
print "名: "
first_name = gets.chomp

puts "こんにちは#{last_name + first_name}さん。"