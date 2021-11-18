# 9-1その2（等価性の判断）

# 実行例1
# 座標pを入力せよ。
# X座標 : 7.5
# Y座標 : 3.2
# 座標qを入力せよ。
# X座標 : 7.5
# Y座標 : 3.2
# p != qです。
# pとqは等しいです。
# pとqは等しいです。

# 実行例2
# 座標pを入力せよ。
# X座標 : 7.5
# Y座標 : 3.2
# 座標qを入力せよ。
# X座標 : 0.0
# Y座標 : 0.0
# p != qです。
# pとqは等しくありません。
# pとqは等しくありません。

class Coordinate
    def initialize(x, y)
        @x = x
        @y = y
    end

    def get_x
        @x
    end
    def get_y
        @y
    end
    
    def set_x(x)
        @x = x
    end
    def set_y(y)
        @y = y
    end
end

# def comp_coordinate(c1, c2)
#     if c1.get_x == c2.get_x && c1.get_y == c2.get_y
#         true
#     else
#         false
#     end
# end

# ↑のようにif文で分岐しなくてもこのように記述するだけでOK
def comp_coordinate(c1, c2)
    c1.get_x == c2.get_x && c1.get_y == c2.get_y
end

puts '座標pを入力せよ。'
print "X座標 : "
x = gets.chomp.to_f
print "Y座標 : "
y = gets.chomp.to_f
# 入力された値を元にCoordinateクラスのインスタンスpを初期化。
p = Coordinate.new(x, y)

puts '座標qを入力せよ。'
print "X座標 : "
x = gets.chomp.to_f
print "Y座標 : "
y = gets.chomp.to_f
# 入力された値を元にCoordinateクラスのインスタンスqを初期化。
q = Coordinate.new(x, y)

#pとqの等価性を評価
if p == q
    puts 'p == qです。'
else
    puts 'p != qです。'
end

if p.get_x == q.get_x && p.get_y == q.get_y
    puts 'pとqは等しいです。'
else
    puts 'pとqは等しくありません。'
end

if comp_coordinate(p, q)
    puts 'pとqは等しいです。'
else
    puts 'pとqは等しくありません。'
end