# キーボードから読み込んだ三つの整数値の中央値を求めて表示するプログラムを作成せよ。

# 実行例
# 整数a: 152
# 整数b: 324
# 整数c: 7
# 中央値は152です。

# 空の配列を用意
median = []

# キーボードから、三つの整数値を読み込んで配列minimumに格納
print "整数a: "
median << gets.chomp.to_i
print "整数b: "
median << gets.chomp.to_i
print "整数c: "
median << gets.chomp.to_i

# 配列medianの要素を並び替えて2番目の要素を中央値として出力(今回は取得した数値が3つであるから、要素が偶数の場合の中央値に関しては考慮しない)
puts "中央値は#{median.sort[1]}です。"


# 要素の数が三つであれば上記のようにしてできるけど、これを抽象化できるようにしたい。解説では中央値を求めるためのアルゴリズムを定義していた。