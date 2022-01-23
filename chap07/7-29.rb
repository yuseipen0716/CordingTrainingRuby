# ２次元配列aと同じ配列(要素数が同じで、すべての要素の値が同じ配列)を生成して返却するメソッドaryClone2(a)を作成せよ

# 実行例
# 行列の行数 : 2
# 行列の列数 : 3
# a[0][0] : 1
# a[0][1] : 2
# a[0][2] : 3
# a[1][0] : 4
# a[1][1] : 5
# a[1][2] : 6
# 行列a
# 1  2  3
# 4  5  6
# 行列aの複製
# 1  2  3
# 4  5  6

def aryClone2(a)
    # 配列aの複製として、a_copyという新しい配列を作成。その配列の各要素に配列aの値を代入していく。
    a_copy = Array.new(a.size){Array.new(a[0].size)}
    (0..a_copy.size-1).each do |g|
        (0..a_copy[0].size-1).each do |h|
            a_copy[g][h] = a[g][h]
        end
    end
    # 実行例のように配列aの複製を行列のように表示。
    puts "\n行列aの複製"
    (0..a_copy.size-1).each do |i|
        puts "\n" if i > 0
        (0..a_copy[0].size-1).each do |j|
            print "#{a_copy[i][j]}  "
        end
    end
end

print "行列の行数 : "
row = gets.chomp.to_i
print "行列の列数 : "
column = gets.chomp.to_i

# 入力された値をもとに配列aを初期化
a = Array.new(row){Array.new(column)}

# 配列aに入力された値を代入していく。
(0..row-1).each do |i|
    (0..column-1).each do |j|
        print "a[#{i}][#{j}] : "
        a[i][j] = gets.chomp.to_i
    end
end

# 実行例のように配列aを行列のように表示。
puts '行列a'
(0..row-1).each do |i|
    puts "\n" if i > 0
    (0..column-1).each do |j|
        print "#{a[i][j]}  "
    end
end

aryClone2(a)