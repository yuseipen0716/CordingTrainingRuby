# double型の配列の全要素の合計値と平均値を求めるプログラムを作成せよ。要素数と全要素の値はキーボードから読み込むこと。

# 実行例
# # 要素数 : 5
# # a[0] = 5.5
# # a[1] = 7.2
# # a[2] = 8.1
# # a[3] = 3.7
# # a[4] = 9.3
# 全要素の合計は33.8です。
# 全要素の平均は6.76です。

print "要素数 : "
element = gets.chomp.to_i

# 入力された数値を配列aに格納
a = []
(1..element).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_f
end

puts "全要素の合計は#{a.sum}です"
puts "全要素の平均は#{a.sum / element}です。"