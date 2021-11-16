# int型のX座標とY座標とで表される2次元座標クラスを作成せよ。
# 座標の一方の値もしくは両方の値を指定しなくてもインスタンスを生成できるものとする。（指定されなかった値は0にすること）。
# なお、インスタンス生成の累計回数が、プログラム実行開始日と等しい時（たとえば、2018年10月3日に実行している場合は、3個めのインスタンス生成時）に『当たり！！今日3個目の座標が生成されました。』と表示すること。
require 'date'

class Point2D
    @@counter = 0
    @@day = Date.today
    def initialize
        @x = 0
        @y = 0
        @@counter += 1
        # Javaとの仕様の違いもあるが、インスタンスを生成するたびにクラスメソッドのcounterをインクリメント。counterがプログラム実行開始日と等しい時に「当たり」の処理を実行。
        puts "当たり！！今日#{@@counter}個目の座標が生成されました。" if @@counter == @@day.day
    end
    def get_coordinate
        puts "#{@@counter} (#{@x}, #{@y})"
    end
end

# コンストラクタの多重定義ができないため、サブクラスを生成
class Point2D_x < Point2D
    def initialize(x)
        @x = x
        @y = 0
        @@counter += 1
    end
end

class Point2D_y < Point2D
    def initialize(y)
        @x = 0
        @y = y
        @@counter += 1
    end
end

class Point2D_xy < Point2D
    def initialize(x, y)
        @x = x
        @y = y
        @@counter += 1
    end
end

p = Array.new(31)
(0..30).each do |i|
    p[i] = Point2D.new
    p[i].get_coordinate
end
