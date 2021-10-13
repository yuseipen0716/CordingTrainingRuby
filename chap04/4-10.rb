# 正の整数値nを読み込んで、1からnまでの積を求めるプログラムを作成せよ。

# 実行例
# 正の整数値: 5
# 1から5までの積は120です。

# 入力される値は正の整数という前提で実装。
print "正の整数値: "
number = gets.chomp.to_i
# 1からnまでの正の整数を配列にして、injectメソッドを使用してみる。
product = (1..number).to_a.inject(:*)
puts "1から#{number}までの積は#{product}です。"


# each でやるならこう？
# product = 1
# (1..number).to_a.each do |num|
#     product = product * num
# end
