# 行列xとyの和を求めてzに格納するメソッドaddMatrix(x, y, z)を作成せよ。三つの配列の要素数が等しければ加算を行なってtrueを返し、等しくなければ加算を行わずにfalseを返すこと。

# 実行結果
# 行列a
# 1  2  3
# 4  5  6

# 行列b
# 6  3  4
# 5  1  2

# 行列c
# 7  5  7
# 9  6  8

def addMatrix(x, y, z)
    # まずは一次元目の配列の要素数が同じかどうかを評価。違うときはreturn
    if x.size == y.size
        # 一次元目の配列の要素数だけ繰り返し。二次元目の配列の個数が正しいかを評価する。違う場合にはreturn。条件が真になるときはtrueが返されている？
        (0..x.size-1).each do |i|
            return if x[i].size != y[i].size
        end
    else
        return
    end
    # 行列の各要素を足しあさせて、zへ代入。
    (0..x.size-1).each do |j|
        (0..x[j].size-1).each do |k|
            z[j][k] = x[j][k] + y[j][k]
        end
    end
end

a = [[1, 2, 3], [4, 5, 6]]
b = [[6, 3, 4], [5, 1, 2]]
c = Array.new(2){Array.new(3)}

addMatrix(a, b, c)

puts '行列a'
(0..a.size-1).each do |i|
    puts "\n" if i > 0
    (0..a[0].size-1).each do |j|
        print "#{a[i][j]}  "
    end
end
puts "\n\n行列b"
(0..b.size-1).each do |k|
    puts "\n" if k > 0
    (0..b[0].size-1).each do |l|
        print "#{b[k][l]}  "
    end
end

# メソッドがreturnで終了した場合にはzの二次元目の配列の要素はすべてnilとなっているので、その場合には行列cの値は出力しないようにする。
unless c[0].include?(nil)
    puts "\n\n行列c"
(0..b.size-1).each do |m|
    puts "\n" if m > 0
    (0..c[0].size-1).each do |n|
        print "#{c[m][n]}  "
    end
end
else
    puts 'false'
end
