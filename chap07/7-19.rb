# 配列aから要素a[idx]を先頭とするn個の要素を削除するメソッドaryRmvNを作成せよ。aryRmvN(a, idx, n)
# 削除はa[idx]より後ろの全要素をn個ずらすことによって行うこと。なお、移動されずに余ってしまう要素の値は変更しなくて良い。
# 例: 配列aの要素が{1, 3, 4, 7, 9, 11}のときにaryRmvN(a, 1, 3)を呼び出した後の配列aの要素は{1,9,11, 7, 9, 11}

# 実行例
# 要素数 : 6
# a[0] : 1
# a[1] : 3
# a[2] : 4
# a[3] : 7
# a[4] : 9
# a[5] : 11
# 削除する開始インデックス : 1
# 削除する要素の個数 : 3
# a[0] : 1
# a[1] : 9
# a[2] : 11
# a[3] : 7
# a[4] : 9
# a[5] : 11

# ======処理の流れ=======
# 取得した削除する要素のインデックスから配列の最後の要素の一つ前の要素までの範囲で繰り返し処理
# 処理の内容としてはi番目の要素にその次のi+1番目の要素を再代入するというもの
# こうすれば、a[a.length-1]の要素は変更せず、a[idx]より後ろの要素を一つ前方にずらすことができる。
def aryRmvN(a, idx, n)
    # 取得した削除する開始インデックスから開始インデックス+n-1までの範囲で繰り返し削除処理
    (idx..idx+n-1).each do |i|
        # a[i+n]がもとの配列の範囲を最後のインデックス番号を超えてしまうとa[i] = a[i+n] => nilとなってしまうので、そのときは値を再代入しない。
        if a[i+n] != nil
            a[i] = a[i+n]
        end
    end
    # 要素削除後の配列の要素を順番に表示
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

print "削除する開始インデックス : "
remove_start = gets.chomp.to_i

print "削除する要素の個数 : "
remove_items = gets.chomp.to_i

aryRmvN(a, remove_start, remove_items)
