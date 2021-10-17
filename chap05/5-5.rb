# 三つの整数値を読み込んで、その合計と平均を表示するプログラムを作成せよ。平均は十数として表示すること。

# 実行例
# 整数値xとyとzの平均値を求めます。
# xの値: 7
# yの値: 8
# zの値: 10
# xとyとzの平均値は8.000です。

puts '整数値xとyとzの平均値を求めます。'
print "xの値: "
num_x =gets.chomp.to_i
print "yの値: "
num_y =gets.chomp.to_i
print "zの値: "
num_z =gets.chomp.to_i

avg = (num_x + num_y + num_z) / 3

puts "xとyとzの平均値は#{avg.to_f}です。"

# →この書き方だと、実行例通りに実行すると平均値は8.0 / avgの計算式で / 3.0とすると、平均値はFloatクラスの8.333333333333334となる。

# 実行例
# 整数値xとyとzの平均値を求めます。
# xの値: 7
# yの値: 8
# zの値: 10
# xとyとzの平均値は8.333です。

puts '整数値xとyとzの平均値を求めます。'
print "xの値: "
num_x =gets.chomp.to_i
print "yの値: "
num_y =gets.chomp.to_i
print "zの値: "
num_z =gets.chomp.to_i

avg = (num_x + num_y + num_z) / 3.0

puts "xとyとzの平均値は#{avg}です。"