# 行によって行列の異なる2次元配列を生成するプログラムを作成せよ。行数・列数・各要素の値はキーボードから読み込むこと。

# 実行例
# 凸凹な2次元配列を作ります。
# 行数 : 3
# 0行目の列数 : 5
# 1行目の列数 : 3
# 2行目の列数 : 4
# 各要素の値を入力せよ。
# c[0][0] : 1
# c[0][1] : 2
# c[0][2] : 3
# c[0][3] : 4
# c[0][4] : 5
# c[1][0] : 6
# c[1][1] : 7
# c[1][2] : 8
# c[2][0] : 9
# c[2][1] : 10
# c[2][2] : 11
# c[2][3] : 12
# 配列cの各要素の値は次のようになっています。
#     1  2  3  4  5
#     6  7  8
#     9  10 11 12

puts '凸凹な2次元配列を作ります。'

print "行数 : "
row = gets.chomp.to_i

c = Array.new(row)

# 配列cの各要素に指定した列数の要素を含む配列を代入する。
(0..row-1).each do |i|
    print "#{i}行目の列数 : "
    c[i] = Array.new(gets.chomp.to_i)
end

puts '各要素の値を入力せよ。'

# 二次元目の配列のそれぞれの要素に入力された数値を代入。
(0..row-1).each do |i|
    count = c[i].count
    (0..count-1).each do |j|
        print "c[#{i}][#{j}] : "
        c[i][j] = gets.chomp.to_i
    end
end

# puts "#{c}"

(0..row-1).each do |k|
    # 実行例のように表示するために改行文字やスペースを出力
    print "\n" if k > 0
    print '    '
    count = c[k].count
    (0..count-1).each do |l|
        print "#{c[k][l]}  "
    end
end
