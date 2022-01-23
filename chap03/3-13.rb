# 二つの整数値を読み込んで、それらの値の差を表示するプログラムを作成せよ。

# 実行例１
# 整数a: 12
# 整数b: 3
# それらの差は9です。
# 実行例2
# 整数a: 3
# 整数b: 12
# それらの差は9です。

# 二つの整数値を読む込む
print "整数a: "
num_a = gets.chomp.to_i
print "整数b: "
num_b = gets.chomp.to_i

# 二つの整数のうち大きい方をbig、小さい方をsmallという変数に代入
if num_a >= num_b
    big = num_a
    small = num_b
elsif num_a < num_b
    big = num_b
    small = num_a
end

diff = big - small

puts "それらの差は#{diff}です。"
