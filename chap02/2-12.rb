# キーボードから読み込んだ整数値±5の範囲の整数値をランダムに生成して表示するプログラムを作成せよ。

# 実行例
# 整数値: 7
# その値±5の乱数を生成しました。
# 値は11です。

# 整数値を読み込み
print "整数値: "
number = gets.chomp.to_i
# ±の値それぞれで変数を定義
number_add5 = number + 5
number_minus5 = number - 5

puts 'その値の±5の乱数を生成しました。'
puts "値は#{rand(number_minus5..number_add5)}です。"
