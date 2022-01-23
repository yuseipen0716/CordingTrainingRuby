# 三つの整数値を読み込んで昇順（小さい順）にソートするプログラムを作成せよ

# 実行例
# 整数a: 53
# 整数b: 35
# 整数c: 42
# a≦b≦cとなるようにソートしました。
# 整数aは35です。
# 整数bは42です。
# 整数cは53です。

# 3-19別解 配列を使ってみる
three_numbers = []

# 三つの整数値読み込み
print "整数a: "
three_numbers << gets.chomp.to_i
print "整数b: "
three_numbers << gets.chomp.to_i
print "整数c: "
three_numbers << gets.chomp.to_i

puts "整数aは#{three_numbers.sort[0]}です。"
puts "整数bは#{three_numbers.sort[1]}です。"
puts "整数cは#{three_numbers.sort[2]}です。"

# こっちの方がちょっとスッキリ。




