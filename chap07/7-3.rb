# 三つのint型引数a, b, cの中央値を求めるメソッドmedを作成せよ

# 整数a : 1
# 整数b : 3
# 整数c : 2
# 中央値は1です。

# 入力される数値は整数値という前提で実装
def med(a, b, c)
    # 引数は三つの整数値であるため、配列をsortして真ん中の要素を取り出す。
    puts "中央値は#{[a, b, c].sort[1]}です。"
end

print "整数a : "
a = gets.chomp.to_i
print "整数b : "
b = gets.chomp.to_i
print "整数c : "
c = gets.chomp.to_i

med(a, b, c)