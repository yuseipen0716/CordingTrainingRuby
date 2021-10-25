# 配列aからkeyと同じ値を持つ要素を探索するメソッドlinerSearchとlinerSearchRを作成せよ。
# キーと同じ値の要素が複数個存在する場合、linerSearchは最も先頭に位置する要素を見つけ、linerSearchRは最も末尾に位置する要素を見つけること。
# int linerSearch(int[] a, key)  int linerSearchR(int[] a, key)

# 実行例
# 要素数 : 6
# x[0] : 5
# x[1] : 22
# x[2] : 74
# x[3] : 32
# x[4] : 120
# x[5] : 22
# 探す値 : 22
# その値の要素は複数存在します。
# 最も先頭のものはx[1]にあります。
# 最も末尾のものはx[5]にあります。

def linerSearch(a, key)
    # まずは渡された配列の中にkeyと一致する要素があるかどうか、またそれが複数あるのかを判別
    result = a.index(key)
end

def linerSearchR(a, key)
    # 配列の要素の並び順を逆転
    a = a.reverse
    # indexメソッドを使用してkeyと一致する最初の要素のインデックス番号を拾ってくる。（これが元の配列で言う、最も末尾の一致要素）
    result = a.index(key)
    # ↑で拾ってきたインデックス番号は並び順を逆転した配列のインデックス番号なので、以下のような式で、インデックス番号を元も順番の配列のものに変換する。
    # 例えば、順番を逆転した要素数6つの配列x'のx[4]というのは元の順番の配列xではx[1]という順番になる。
    result = a.size - 1 - result
end

print "要素数 : "
element = gets.chomp.to_i

x = []
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

print "探す値 : "
key = gets.chomp.to_i

if x.count(key) < 1
    puts 'その値と一致する要素はありません。'
elsif x.count(key) == 1
    puts 'その値と一致する要素が一つあります。'
    puts "その要素はx[#{linerSearch(x, key)}]にあります。"
else
    puts 'その値の要素は複数存在します。'
    puts "最も先頭のものはx[#{linerSearch(x, key)}]にあります。"
    puts "最も末尾のものはx[#{linerSearchR(x, key)}]にあります。"
end

