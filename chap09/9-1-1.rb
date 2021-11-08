# X座標とY座標とで構成される2次元座標クラスCoordinateを作成せよ。X座標とY座標の値を取得・返却するメソッドと設定するメソッドを定義すること。

# 実行例
# 座標pを入力せよ。
# X座標 : 7.5
# Y座標 : 3.2
# p = (7.5, 3.2)
# p = (9.9, 9.9)
# q = (9.9, 9.9)


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

puts "座標pを入力せよ。"
print "X座標 : "
x = gets.chomp.to_f
print "Y座標 : "
y = gets.chomp.to_f

p = Coordinate.new(x, y)
puts "p = (#{p.get_x}, #{p.get_y})"
# 解説を参考に。pのインスタンスを参照するようにqを初期化。
q = p
q.set_x(9.9)
q.set_y(9.9)
puts "p = (#{p.get_x}, #{p.get_y})"
puts "q = (#{q.get_x}, #{q.get_y})"
# puts "#{p.object_id}"
# puts "#{q.object_id}"