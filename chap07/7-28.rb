# 行列xとyの和を格納した2次元配列を返すメソッドを作成せよ。（行数及び列数が同一の配列をxとyに受け取ることを前提として良い）
# addMatrix(x, y)

# 実行例
# 行列の行数 : 2
# 行列の列数 : 3
# a[0][0] : 1
# a[0][1] : 2
# a[0][2] : 3
# a[1][0] : 4
# a[1][1] : 5
# a[1][2] : 6
# b[0][0] : 6
# b[0][1] : 3
# b[0][2] : 4
# b[1][0] : 5
# b[1][1] : 1
# b[1][2] : 2
# 行列a
# 1  2  3
# 4  5  6

# 行列b
# 6  3  4
# 5  1  2

# 行列c
# 7  5  7
# 9  6  8

def addMatrix(x, y)
    # 引数として受け取った配列の要素数と同じになるように配列cを初期化する。
    c = Array.new(x.size){Array.new(x[0].size)}
    # 各要素を足し合わせて、配列cに代入
    (0..x.size-1).each do |e|
        (0..x[0].size-1).each do |f|
            c[e][f] = x[e][f] + y[e][f]
        end
    end
    # 実行例のように行列の形で表示
    puts "\n\n行列c"
    (0..c.size-1).each do |g|
        puts "\n" if g > 0
        (0..c[0].size-1).each do |h|
            print "#{c[g][h]}  "
        end
    end
end

print "行列の行数 : "
row = gets.chomp.to_i
print "行列の列数 : "
column = gets.chomp.to_i

# 入力された値をもとに配列a, bを初期化する。
a = Array.new(row){Array.new(column)}
b = Array.new(row){Array.new(column)}

# 配列a,bそれぞれに入力された値を代入していく。ここの繰り返しがくどい気がするので、どうにか共通化したいが思いつきませんでした。
(0..row-1).each do |i|
    (0..column-1).each do |j|
        print "a[#{i}][#{j}] : "
        a[i][j] = gets.chomp.to_i
    end
end

(0..row-1).each do |k|
    (0..column-1).each do |l|
        print "b[#{k}][#{l}] : "
        b[k][l] = gets.chomp.to_i
    end
end
# 実行例のように配列a, bを行列のように表示。
puts '行列a'
(0..row-1).each do |i|
    puts "\n" if i > 0
    (0..column-1).each do |j|
        print "#{a[i][j]}  "
    end
end
puts "\n\n行列b"
(0..row-1).each do |k|
    puts "\n" if k > 0
    (0..column-1).each do |l|
        print "#{b[k][l]}  "
    end
end

addMatrix(a, b)