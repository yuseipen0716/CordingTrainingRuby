# 配列aから要素a[idx]を削除した配列を返すメソッドaryRmvを作成せよ。 aryRmvOf(a, idx)
# 削除はa[idx]より後ろの全要素を一つ前方にずらすことによって行うこと。なお、移動されずに余ってしまう末尾要素a[a.length - 1]の値は変更しなくて良い。
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
# y[5] : 11

# 7-18の問題で作成したプログラムとあまり違いがわかりにくい。xという配列をメソッドに渡し、yという配列で返しているので、そのように実装。
def aryOfRmv(a, idx)
    # 取得した削除する要素のインデックスから配列の最後の要素の一つ前の要素までの範囲で繰り返し
    (idx..a.size-1-1).each do |i|
        a[i] = a[i+1]
    end
    y = []
    # 要素削除した新しい配列yの要素を順番に表示
    (0..a.size-1).each do |j|
        y[j] = a[j]
        puts "y[#{j}] : #{y[j]}"
    end
end

print "要素数 : "
element = gets.chomp.to_i

a = []
(0..element-1).each do |i|
    print "a[#{i}] : "
    a << gets.chomp.to_i
end

print "削除する要素のインデックス : "
remove_index = gets.chomp.to_i

aryOfRmv(a, remove_index)
