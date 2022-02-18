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

# 問題の意を履き違えていたみたいですね。

def add_matrix(x, y, z)
    # 行列x, y, zの行数が正しいかのチェック。正しくない場合はfalseを返してreturn
    return false if x.length != y.length || y.length != z.length

    # 2次元目の配列の要素数を走査して、要素数が合わない場合にはfalseを返してreturn
    (0..x.length-1).each do |i|
        return false if x[i].length != y[i].length || y[i].length != z[i].length
    end

    # ここまで生き残ったものは1次元目、2次元目ともに要素数が等しい配列というワケ。xとyの行列の和を求めてzに格納、trueを返す。
    (0..x.length-1).each do |j|
        (0..x[j].length-1).each do |k|
            z[j][k] = x[j][k] + y[j][k]
        end
    end
    # ここではreturnを記述せず、戻り値のみを記述する。(ruby的な記述)
    true
end


a = [[1, 2, 3], [4, 5, 6]]
b = [[6, 3, 4], [5, 1, 2]]
c = Array.new(2){Array.new(3)}

if add_matrix(a, b, c)
    puts '行列a'
    (0..a.size-1).each do |i|
        puts "\n" if i > 0
        (0..a[0].size-1).each do |j|
            print "#{a[i][j]}  "
        end
    end
    puts "\n\n行列b"
    (0..b.size-1).each do |i|
        puts "\n" if i > 0
        (0..b[0].size-1).each do |j|
            print "#{b[i][j]}  "
        end
    end
    puts "\n\n行列c"
    (0..b.size-1).each do |i|
        puts "\n" if i > 0
        (0..c[0].size-1).each do |j|
            print "#{c[i][j]}  "
        end
    end
else
    puts 'false'
end




# def add_matrix(x, y, z)
#     # まずは一次元目の配列の要素数が同じかどうかを評価。違うときはreturn
#     if x.size == y.size
#         # 一次元目の配列の要素数だけ繰り返し。二次元目の配列の個数が正しいかを評価する。違う場合にはreturn。条件が真になるときはtrueが返されている？
#         (0..x.size-1).each do |i|
#             return if x[i].size != y[i].size
#         end
#     else
#         return
#     end
#     # 行列の各要素を足しあさせて、zへ代入。
#     (0..x.size-1).each do |j|
#         (0..x[j].size-1).each do |k|
#             z[j][k] = x[j][k] + y[j][k]
#         end
#     end
# end

# a = [[1, 2, 3], [4, 5, 6]]
# b = [[6, 3, 4], [5, 1, 2]]
# c = Array.new(2){Array.new(3)}

# add_matrix(a, b, c)

# puts '行列a'
# (0..a.size-1).each do |i|
#     puts "\n" if i > 0
#     (0..a[0].size-1).each do |j|
#         print "#{a[i][j]}  "
#     end
# end
# puts "\n\n行列b"
# (0..b.size-1).each do |k|
#     puts "\n" if k > 0
#     (0..b[0].size-1).each do |l|
#         print "#{b[k][l]}  "
#     end
# end

# # メソッドがreturnで終了した場合にはzの二次元目の配列の要素はすべてnilとなっているので、その場合には行列cの値は出力しないようにする。
# unless c[0].include?(nil)
#     puts "\n\n行列c"
# (0..b.size-1).each do |m|
#     puts "\n" if m > 0
#     (0..c[0].size-1).each do |n|
#         print "#{c[m][n]}  "
#     end
# end
# else
#     puts 'false'
# end

# キャメルケースになっていたメソッド名をスネークケースに修正しました。