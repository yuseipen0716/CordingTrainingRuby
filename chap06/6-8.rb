# 配列から、任意の値をもつ要素を探索するプログラムを作成せよ。
# 同一の値を持つ要素が複数個存在する場合、最も先端に位置する要素を見つけるプログラムと、最も末尾側に位置する要素を見つけるプログラムを作成せよ。

# 最も先端に位置する要素を探索

# 実行例

# 要素数 : 7
# a[0] = 22
# a[1] = 57
# a[2] = 11
# a[3] = 32
# a[4] = 91
# a[5] = 32
# a[6] = 70
# 探す数値 : 32
# それはa[3]にあります。

print "要素数 : "
element = gets.chomp.to_i

# 入力された数値を配列aに格納
a = []
(1..element).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_i
end

print "探す数値 : "
search = gets.chomp.to_i
# indexメソッドを使用して要素の番号を出す。
puts "それはa[#{a.index(search)}]にあります。"


# 最も末尾側に位置する要素を探索

print "要素数 : "
element = gets.chomp.to_i

a = []
(1..element).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_i
end

print "探す数値 : "
search = gets.chomp.to_i

# 末尾側でマッチするインデックス番号が知りたいので、配列の要素を逆順に調べていく繰り返し処理を行う。最初にヒットした要素が最も末尾側に位置する条件に一致する要素であるので、そこで繰り返し処理は終了。
search_index = nil
(1..element).each do |s|
    if a[element - s] == search
        search_index = element - s
        break
    end
end

puts "それはa[#{search_index}]にあります。"