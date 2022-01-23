# 配列aの全要素を配列bに対して逆順にコピーするプログラムを作成せよ。なお、二つの配列の要素数は同一であると仮定してよい。

# 実行例
# 要素数 : 5
# a[0] = 11
# a[1] = 12
# a[2] = 13
# a[3] = 14
# a[4] = 15
# aの全要素を逆順にbにコピーしました。
# b[0] = 15
# b[1] = 14
# b[2] = 13
# b[3] = 12
# b[4] = 11

print "要素数 : "
element = gets.chomp.to_i

a = []
# 入力された値を配列aに格納
(1..element).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_i
end

# 
b = a.reverse!
puts 'aの全要素を逆順にbにコピーしました。'

(1..element).each do |i|
    puts "b[#{i-1}] = #{b[i-1]}"
end