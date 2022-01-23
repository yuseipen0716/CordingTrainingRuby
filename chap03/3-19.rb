# 三つの整数値を読み込んで昇順（小さい順）にソートするプログラムを作成せよ

# 実行例
# 整数a: 53
# 整数b: 35
# 整数c: 42
# a≦b≦cとなるようにソートしました。
# 整数aは35です。
# 整数bは42です。
# 整数cは53です。

# 三つの整数値読み込み
print "整数a: "
num_a = gets.chomp.to_i
print "整数b: "
num_b = gets.chomp.to_i
print "整数c: "
num_c = gets.chomp.to_i

if num_b < num_a && num_b < num_c # bが最小値の場合
    # a,b入れ替え bac
    sort = num_b
    num_b = num_a
    num_a = sort
elsif num_c < num_a && num_c < num_b # cが最小値の場合
    # c,a入れ替え cba
    sort = num_c
    num_c = num_a
    num_a = sort
else
end #a 最小の時はabcそのまま

if num_b > num_c
    # b,c入れ替え
    sort = num_b
    num_b = num_c
    num_c = sort 
end




puts "整数aは#{num_a}です。"
puts "整数bは#{num_b}です。"
puts "整数cは#{num_c}です。"




