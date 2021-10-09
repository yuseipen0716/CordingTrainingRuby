# キーボードから読み込んだ三つの整数値の最小値を求めて表示するプログラムを作成せよ。

# 実行例
# 整数a: 3
# 整数b: 1
# 整数c: 2
# 最小値は1です。

# 空の配列を用意
minimum = []

# キーボードから、三つの整数値を読み込んで配列minimumに格納
print "整数a: "
minimum << gets.chomp.to_i
print "整数b: "
minimum << gets.chomp.to_i
print "整数c: "
minimum << gets.chomp.to_i

puts "最小値は#{minimum.min}です。"


# 今回は配列を使ったが、解説だと三値の最小値を求めるアルゴリズムを定義して解いている。
# print "整数a: "
# num_a = gets.chomp.to_i
# print "整数b: "
# num_b = gets.chomp.to_i
# print "整数c: "
# num_c = gets.chomp.to_i

# min = num_a
# min = num_b if num_b < min
# min = num_c if num_c < min

# puts "最小値は#{min}です。"