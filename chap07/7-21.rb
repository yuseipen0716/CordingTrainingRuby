# 配列aと配列bの全要素の値を交換するメソッドaryExchng(a, b)を作成せよ。二つの配列の要素数が等しくない場合は、小さい方の要素数分の要素を交換すること。
# 例: 配列aの要素が{1, 2, 3, 4, 5, 6, 7}で、配列bの要素が{5, 4, 3, 2, 1}のときに、aryExchng(a, b)と呼び出したらa{5,4,3,2,1,6,7}、b{1,2,3,4,5}とならなければならない。

# 実行例
# 配列aの要素数 : 7
# a[0] : 1
# a[1] : 2
# a[2] : 3
# a[3] : 4
# a[4] : 5
# a[5] : 6
# a[6] : 7
# 配列bの要素数 : 5
# b[0] : 5
# b[1] : 4
# b[2] : 3
# b[3] : 2
# b[4] : 1
# 配列aとbの全要素を交換しました。
# a[0] : 5
# a[1] : 4
# a[2] : 3
# a[3] : 2
# a[4] : 1
# a[5] : 6
# a[6] : 7
# b[0] : 1
# b[1] : 2
# b[2] : 3
# b[3] : 4
# b[4] : 5

# ======処理の流れ=======
# 二つの配列を引数として渡し、小さい方の要素数分値を交換する。
# 値の交換については二値の交換を行う。
# 交換した配列は上から要素を並べて表示する。
# =====================
def aryExchng(a, b)
    # 小さい要素数分の要素を交換する
    if a.size > b.size
        (0..b.size-1).each do |m|
            tmp = a[m]
            a[m] = b[m]
            b[m] = tmp
        end
    else
        (0..a.size-1).each do |n|
            tmp = a[n]
            a[n] = b[n]
            b[n] = tmp
        end
    end
    puts '配列aとbの全要素を交換しました。'
    (0..a.size-1).each do |o|
        puts "a[#{o}] : #{a[o]}"
    end
    (0..b.size-1).each do |p|
        puts "b[#{p}] : #{b[p]}"
    end
end

a = []
print "配列aの要素数 : "
element_a = gets.chomp.to_i
(0..element_a-1).each do |i|
    print "a[#{i}] : "
    a << gets.chomp.to_i
end

b = []
print "配列bの要素数 : "
element_b = gets.chomp.to_i
(0..element_b-1).each do |j|
    print "a[#{j}] : "
    b << gets.chomp.to_i
end

aryExchng(a, b)
