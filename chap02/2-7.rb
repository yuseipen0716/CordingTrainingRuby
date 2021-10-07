# キーボードから読み込んだ整数値の最下位桁を除いた値と、最下位桁を表示するプログラムを作成せよ

# 実行結果
# 整数値: 1275
# 最下位桁を除いた値は127です。
# 最下位桁は5です。

# 標準入力部分は整数値で入力される前提で作成。
print '整数値: '
input_number = gets.chomp
split_least_digit = input_number.split(/(.\z)/)

#splitで配列に格納された値を呼び出し
puts "最下位桁を除いた値は#{split_least_digit[0]}です。"
puts "最下位桁は#{split_least_digit[1]}です。"


# 解説では乗除演算子を使って求めていた！！

# 乗除演算子を使用して書き直すと ↓ こんな感じだろうか。こちらのほうがスッキリ書けるイメージ

# print '整数値: '
# input_number = gets.chomp

# puts "最下位桁を除いた値は#{input_number.to_i / 10}です。"
# puts "最下位桁は#{input_number.to_i % 10}です。"
