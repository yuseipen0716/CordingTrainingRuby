# 配列aと同じ配列(要素数が同じで、全ての要素の値が同じ配列)を生成して返却するメソッドarrayClone(a)を作成せよ。

# 実行例
# 要素数 : 5
# x[0] : 11
# x[1] : 22
# x[2] : 33
# x[3] : 44
# x[4] : 55
# 配列xの複製yを作りました。
# y[0] : 11
# y[1] : 22
# y[2] : 33
# y[3] : 44
# y[4] : 55

def arrayClone(a)
    # 配列aの要素数と同じ配列yを作成。
    y = Array.new(a.size)
    (0..a.size-1).each do |i|
        y[i] = a[i]
        puts "y[#{i}] : #{y[i]}"
    end
end

x = []
print "要素数 : "
element = gets.chomp.to_i
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

puts "配列xの複製yを作りました。"

arrayClone(x)