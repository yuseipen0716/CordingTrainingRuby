# 2つの実数値を読み込み、その和と平均を求めて表示するプログラムを作成せよ

# 実行例
# xの値: 9.75
# yの値: 2.5
# 合計は12.25です。
# 平均は6.125です。

#2つの実数値を読み込み。ここでは半角数字で入力される前提の実装としています。
print 'xの値: '
input_x = gets.chomp
print 'yの値: '
input_y = gets.chomp

sum_xy = input_x.to_f + input_y.to_f
avr_xy = sum_xy / 2

puts "合計は#{sum_xy}です。"
puts "平均は#{avr_xy}です。"