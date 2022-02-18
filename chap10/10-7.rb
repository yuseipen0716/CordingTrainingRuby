# 二値/三値/配列の最小値を求めるメソッドや最大値を求めるメソッドを集めたユーティリティクラスMinMaxを作成せよ。
# 実行例
# xの値 : 3
# yの値 : 4
# zの値 : 1
# x, yの最小値は3です。
# x, yの最大値は4です。
# x, y, zの最小値は1です。
# x, y, zの最大値は4です。
# 配列aの要素数 : 6
# a[0] : 2
# a[1] : 1
# a[2] : 3
# a[3] : 2
# a[4] : 1
# a[5] : 3
# 配列aの最小値は1です。
# そのインデックスは{ [1, 4] }です。
# 配列aの最大値は3です。
# そのインデックスは{ [2, 5] }です

class MinMax
    def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
    end
    # 3値の最小値を求めるインスタンスメソッド
    def min_3
        nums = []
        nums << @a << @b << @c
        nums.min
    end
    # 3値の最大値を求めるインスタンスメソッド
    def max_3
        nums = []
        nums << @a << @b << @c
        nums.max
    end
end

class MinMax_2
    def initialize(a, b)
        @a = a
        @b = b
    end
    # 2値の大小を比較して最小値、最大値を返すインスタンスメソッド。今回は三項演算子を使って書いてみた。
    def min_2
        @a < @b? @a : @b
    end
    def max_2
        @a > @b? @a : @b
    end
end

# 配列を受け取ってインスタンスを生成するクラス
class MinMax_array
    def initialize(a)
        @a = a
    end
    def min_array
        @a.min
    end
    def max_array
        @a.max
    end
    # 配列の要素の最小値を見つけ、そのインデックスを返すメソッド。
    # 配列の要素を一つずつ、配列の要素の最小値と等しいかどうかを評価。最小値と等しい要素が見つかった時は、match_minという配列にインデックス番号を格納。
    def min_find
        match_min = []
        (0..@a.size-1).each do |i|
            if @a[i] == self.min_array
                match_min << i
            end
        end
        puts "そのインデックスは{ #{match_min} }です。"
    end
    # 最小値の方のメソッドと同様の処理
    def max_find
        match_max = []
        (0..@a.size-1).each do |i|
            if @a[i] == self.max_array
                match_max << i
            end
        end
        puts "そのインデックスは{ #{match_max} }です。"
    end
end

# 実行例のように表示していく。

# ======= 表示 2値、3値 ========
print "xの値 : "
x = gets.chomp.to_i
print "yの値 : "
y = gets.chomp.to_i
print "zの値 : "
z = gets.chomp.to_i

num_xyz = MinMax.new(x, y, z)
num_xy = MinMax_2.new(x, y)

puts "x, yの最小値は#{num_xy.min_2}です。"
puts "x, yの最大値は#{num_xy.max_2}です。"

puts "x, y, zの最小値は#{num_xyz.min_3}です。"
puts "x, y, zの最大値は#{num_xyz.max_3}です。"


# ======= 表示 配列 =======
print "配列aの要素数 : "
element = gets.chomp.to_i
a = Array.new(element)
(0..element-1).each do |i|
    print "a[#{i}] : "
    a[i] = gets.chomp.to_i
end
a = MinMax_array.new(a)
puts "配列aの最小値は#{a.min_array}です。"
a.min_find
puts "配列aの最大値は#{a.max_array}です。"
a.max_find

