# 三つの整数値を読み込んで、その合計と平均を表示するプログラムを作成せよ。平均はキャスト演算子を利用して求め、実装として表示すること。

# 実行例
# 整数値xとyとzの平均値を求めます。
# xの値: 7
# yの値: 8
# zの値: 10
# xとyとzの平均値は8.333です。

#Rubyにはキャスト演算子というのはなく、型変更はto_fやto_iのようなメソッドで行う


puts '整数値xとyとzの平均値を求めます。'
print "xの値: "
num_x =gets.chomp.to_i
print "yの値: "
num_y =gets.chomp.to_i
print "zの値: "
num_z =gets.chomp.to_i

avg = (num_x + num_y + num_z).to_f / 3

puts "xとyとzの平均値は#{avg}です。"