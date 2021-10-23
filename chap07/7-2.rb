# 三つのint型引数a, b, cの最小値を求めるメソッドminを作成せよ。

# 実行例
# 整数a : 1
# 整数b : 3
# 整数c : 2
# 最小値は1です。

# 入力される数値は整数値という前提で実装
def min(a, b, c)
    puts "最小値は#{[a, b, c].min}です。"
end

print "整数a : "
a = gets.chomp.to_i
print "整数b : "
b = gets.chomp.to_i
print "整数c : "
c = gets.chomp.to_i

min(a, b, c)