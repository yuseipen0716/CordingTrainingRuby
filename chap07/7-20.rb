# 配列a[idx]にxを挿入するメソッドaryInsを作成する。 aryIns(a, idx, x)
# 挿入に伴ってa[idx]〜a[a.length - 2]を一つ後方にずらさなければならない。
# 例: 配列aの要素が{1,3, 4, 7, 9, 11}のとき、aryIns(a, 2, 99)と呼び出した後の配列aの要素は{1, 3, 99, 4, 7, 9}

# 実行例
# 要素数 : 6
# a[0] : 1
# a[1] : 3
# a[2] : 4
# a[3] : 7
# a[4] : 9
# a[5] : 11
# 挿入する要素のインデックス : 2
# 挿入する値 : 99
# a[0] : 1
# a[1] : 3
# a[2] : 99
# a[3] : 4
# a[4] : 7
# a[5] : 9

def aryIns(a, idx, x)
    # 挿入するインデックスよりあとの要素は前の要素を再代入するようにする。
    # 昇順に繰り返すと前の要素を再代入された要素を再代入してしまい、後半が全て同じ数字となってしまう。
    # 降順に繰り返し処理が行えるよう、範囲の部分をto_aしてreverse
    (idx+1..a.size-1).to_a.reverse.each do |i|
        a[i] = a[i-1]
    end
    # 挿入する要素のインデックスに挿入する値を代入
    a[idx] = x
    (0..a.size-1).each do |j|
        puts "a[#{j}] : #{a[j]}"
    end
end

print "要素数 : "
element = gets.chomp.to_i

a = []
(0..element-1).each do |i|
    print "a[#{i}] : "
    a << gets.chomp.to_i
end

print "挿入する要素のインデックス : "
insert_index = gets.chomp.to_i

print "挿入する値 : "
insert_num = gets.chomp.to_i

aryIns(a, insert_index, insert_num)