#9-1その3 インスタンスの配列

# キーボードから読み込んだ整数値nを要素数とする配列を生成して、全要素の座標を(5.5, 7.7)に設定・表示します。

# 実行例
# 座標は何個 : 3
# a[0] = (5.5, 7.7)
# a[1] = (5.5, 7.7)
# a[2] = (5.5, 7.7)

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

print "座標は何個 : "
num = gets.chomp.to_i

a = Array.new(num)

(0..num-1).each do |i|
    # a[i].set_x(5.5)
    # a[i].set_y(7.7)
    # 解説のように、以上のような記載の仕方をするとerrorが出てしまう。
    a[i] = Coordinate.new(5.5, 7.7)
    puts "a[#{i}] = (#{a[i].get_x}, #{a[i].get_y})"
end

