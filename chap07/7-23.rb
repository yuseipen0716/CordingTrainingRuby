# 配列aの要素の中で値がxである全要素のインデックスを先頭から順に格納した配列を返却するメソッドarraySrchIdx(a, x)

# 実行例
# 要素数 : 7
# x[0] : 1
# x[1] : 5
# x[2] : 4
# x[3] : 8
# x[4] : 5
# x[5] : 5
# x[6] : 7
# 探索する値 : 5
# 一致する要素のインデックス
# 1
# 4
# 5

def arraySrchIdx(a, x)
    result = []
    # 配列aの要素がxと等しい時、インデックス(i)を空の配列resultに格納。
    (0..a.size-1).each do |i|
        result << i if a[i] == x
    end
    puts '一致する要素のインデックス'
    puts result
end

x = []
print "要素数 : "
element = gets.chomp.to_i
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

print "探索する値 : "
search_x = gets.chomp.to_i

arraySrchIdx(x, search_x)
