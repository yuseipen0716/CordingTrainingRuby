# 前ページにしめした問題点を解決するように2次元座標クラスCoordinateを改良せよ。
# 問題点
# 1.コンストラクタが二つのdouble型引数を要求するため、インスタンスの生成に柔軟性が欠ける。
# 2.ある座標と同じ座標をもつインスタンスの構築が容易ではない。
# 3.二つの座標が等しいかどうかの判断が容易ではない。
# 4.座標の表示の度に、二つのゲッタメソッドを呼び出して座標を調べる必要がある。

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
    # 座標pとqが等しいかどうかを判断する際に、objectの等価式で比較するのではなく、X座標とY座標の値がそれぞれ等しいかどうかで等価性を評価するインスタンスメソッド
    def equal_to(c)
        if @x == c.get_x && @y == c.get_y
            true
        else
            false
        end
    end
end

# 解説では3つのコンストラクタを多重定義しているが、Rubyだとコンストラクタの多重定義はできない。
# 同じように、さまざまな引数に対応したコンストラクタを定義したければクラスの継承を使えばいいのだろうか？

class CoordinateForNow < Coordinate
    # 引数なしで初期化できるCoordinateForNowクラスをCoordinateクラスのサブクラスとして作詠
    def initialize
        # x, yに初期値を与える。これで引数なしでインスタンスを生成した場合でもインスタンス変数を持っている状態で初期化できる
        @x = 0.0
        @y = 0.0
    end
end

class CoordinateAug < Coordinate
    # ある特定の座標を格納した変数を渡された際にそのX座標、Y座標の値で初期化するクラスCoordinateAugをCoordinateクラスのサブクラスとして作成
    def initialize(c)
        @x = c.get_x
        @y = c.get_y
    end
end

# 以上のように改良したクラスの利用例
# 実行例
# 座標pを入力せよ。
# X座標 : 7.5
# Y座標 : 3.2
# p = (7.5, 3.2)
# qをpを同じ座標として作りました。
# q = (7.5, 3.2)
# pとqは等しいです。
# c1 = (0.0, 0.0)
# c2 = (1.1, 2.2)
# a[0] = (0.0, 0.0)
# a[1] = (0.0, 0.0)
# a[2] = (0.0, 0.0)

puts '座標pを入力せよ。'
print "X座標 : "
x = gets.chomp.to_f
print "Y座標 : "
y = gets.chomp.to_f

p = Coordinate.new(x, y)

puts "p = (#{p.get_x}, #{p.get_y})"

puts 'qをpと同じ座標として作りました。'

q = CoordinateAug.new(p)
puts "q = (#{q.get_x}, #{q.get_y})"

# Coordinateクラスのインスタンスメソッドequal_toを利用して等価性を評価。
if q.equal_to(p)
    puts 'pとqは等しいです。'
else
    puts 'pとqは等しくありません。'
end

# c1は引数を渡さずに初期化を行う、CoordinateForNowのインスタンスとして、c2は座標を渡して初期化するCoordinateのインスタンスとして初期化。
c1 = CoordinateForNow.new
c2 = Coordinate.new(1.1, 2.2)
puts "c1 = (#{c1.get_x}, #{c1.get_y})"
puts "c2 = (#{c2.get_x}, #{c2.get_y})"

# 要素が3つの配列を作成し、それぞれの要素をCoordinateForNowのインスタンスとして初期化。
a = Array.new(3)
(0..a.size-1).each do |i|
    a[i] = CoordinateForNow.new
    puts "a[#{i}] = (#{a[i].get_x}, #{a[i].get_y})"
end
