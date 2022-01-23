# 配列aから要素a[idx]を削除した配列を返すメソッドaryRmvを作成せよ。 aryRmvOf(a, idx)
# 削除はa[idx]より後ろの全要素を一つ前方にずらすことによって行うこと。
# 例：配列aの要素が{1, 3, 4, 7, 9, 11}のときにaryRmv(a, 2)と呼び出した後の配列aの要素は{1, 3, 7, 9, 11, 11}となる。

# 実行例
# 要素数 : 6
# x[0] : 1
# x[1] : 3
# x[2] : 4
# x[3] : 7
# x[4] : 9
# x[5] : 11
# 削除する要素のインデックス : 2
# y[0] : 1
# y[1] : 3
# y[2] : 7
# y[3] : 9
# y[4] : 11

# 7-18の問題で作成したプログラムの要素を前方にずらして取り残されたあまりの要素のない新しい配列を返すようにしている。
def aryOfRmv(a, idx)
    # 取得した削除する要素のインデックスから配列の最後の要素までの範囲で繰り返し。一つ後の要素を再代入することで、配列の要素を一つ前方にずらす
    (idx..a.size-1).each do |i|
        a[i] = a[i+1]
    end
    # 上記のようにすると、a[a.size-1] => nilとなってしまう。新しい配列にはこのインデックスが含まれないようにするため、要素数はa.size-iとしてArray.new
    y = Array.new(a.size-1)
    # 要素削除した新しい配列yの要素を順番に表示
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

print "削除する要素のインデックス : "
remove_index = gets.chomp.to_i

aryOfRmv(x, remove_index)
