# 配列aの全要素の合計を求めるメソッドsumOfを作成せよ
# int sumOf(int[] a)

# 実行例
# 要素数 : 5
# x[0] : 22
# x[1] : 5
# x[2] : 11
# x[3] : 32
# x[4] : 120
# 全要素の合計は190です。

def sumOf(a)
    # 渡された配列aに対してsumメソッドを使って値を返す
    a.sum
end

print "要素数 : "
element = gets.chomp.to_i

x = []
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

puts "全要素の合計は#{sumOf(x)}です。"

