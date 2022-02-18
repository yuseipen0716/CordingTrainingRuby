# 実数値を読み込んで、その値の絶対値、平方根、その値を半径としてもつ円の面積を求めて表示するプログラムを作成せよ。

# 実行例
# 実数 : 5.5
# 絶対値 : 5.5
# 平方根 : 2.345207879911715
# 面積 : 95.03317777109123

class MathMethods
    def initialize(num)
        @num = num
    end
    # 絶対値を求めるインスタンスメソッド
    def abs
        @num.abs
    end
    # 平方根を求めるインスタンスメソッド
    def sqrt
        Math.sqrt(@num)
    end
    # 円の面積を求めるインスタンスメソッド
    def area_circle
        Math::PI * @num * @num
    end
end
print "実数 : "
num = gets.chomp.to_f
number = MathMethods.new(num)

puts "絶対値 : #{number.abs}"
puts "平方根 : #{number.sqrt}"
puts "面積 : #{number.area_circle}"

