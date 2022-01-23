# 二つのint型関数a, bの最小値、三つのint型整数a, b, cの最小値、配列aの要素の最小値を求める、多重定義されたメソッド群を作成せよ
# min(a, b)  min(a, b, c)  min(a)

# 実行例
# xの値 : 13
# yの値 : 52
# zの値 : 11
# 配列aの要素数 : 4
# a[0] : 3
# a[1] : 7
# a[2] : 1
# a[3] : 8
# x, yの最小値は13です。
# x, y, zの最小値は11です。
# 配列aの最小値は1です。

# 解説のようにminメソッドを多重定義することはできないみたいなので、問題の趣旨とは合わないかもしれませんが、別名でメソッドを定義して、実行結果は得られるようにした。

def min_two(a, b)
    min = [a, b].min
end

def min_three(a, b, c)
    min = [a, b, c].min
end

def min_array(a)
    min = a.min
end

print "xの値 : "
x = gets.chomp.to_i
print "yの値 : "
y = gets.chomp.to_i
print "zの値 : "
z = gets.chomp.to_i

print "配列aの要素数 : "
element = gets.chomp.to_i

a = Array.new(element)
(0..element-1).each do |i|
    print "a[#{i}] : "
    a[i] = gets.chomp.to_i
end

puts "x, yの最小値は#{min_two(x, y)}です。"
puts "x, y, zの最小値は#{min_three(x, y, z)}です。"
puts "配列aの最小値は#{min_array(a)}です。"
