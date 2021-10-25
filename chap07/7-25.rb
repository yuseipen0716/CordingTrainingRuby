# 配列aから要素a[idx]を先頭とするn個の要素を削除するメソッドaryRmvOfNを作成せよ。aryRmvOfN(a, idx, n)
# 削除はa[idx]より後ろの全要素をn個ずらすことによって行うこと。
# 例: 配列aの要素が{1, 3, 4, 7, 9, 11}のときにaryRmvN(a, 1, 3)を呼び出した後の配列aの要素は{1, 9, 11}

# 実行例
# 要素数 : 6
# x[0] : 1
# x[1] : 3
# x[2] : 4
# x[3] : 7
# x[4] : 9
# x[5] : 11
# 削除する開始インデックス : 1
# 削除する要素の個数 : 3
# y[0] : 1
# y[1] : 9
# y[2] : 11

# ======処理の流れ=======
# 取得した削除する要素のインデックスから配列の最後の要素の一つ前の要素までの範囲で繰り返し処理
# 処理の内容としてはi番目の要素にその次のi+1番目の要素を再代入するというもの
# こうすれば、a[a.length-1]の要素は変更せず、a[idx]より後ろの要素を一つ前方にずらすことができる。
def aryRmvN(a, idx, n)
    # 取得した削除する開始インデックスから開始インデックス+n-1までの範囲で繰り返し削除処理
    (idx..idx+n-1).each do |i|
        a[i] = a[i+n]
    end
    # 以上で要素を削除して前方にずらすと、新しい配列yの要素数は配列aの要素数からnを引いたものとなるため、そのようにして配列yを作成。
    y = Array.new(a.size-n)
    # 配列yに配列aの対応する要素を代入し、要素削除後の配列の要素を順番に表示
    (0..y.size-1).each do |j|
        y[j] = a[j]
        puts "y[#{j}] : #{y[j]}"
    end
end

print "要素数 : "
element = gets.chomp.to_i

x = []
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

print "削除する開始インデックス : "
remove_start = gets.chomp.to_i

print "削除する要素の個数 : "
remove_items = gets.chomp.to_i

aryRmvN(x, remove_start, remove_items)