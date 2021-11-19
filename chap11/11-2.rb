# 実数値を読み込んで、その値の絶対値、平方根、その値を半径としてもつ円の面積を求めて表示するプログラムを作成せよ。

# 実行例
# 実数 : 5.5
# 絶対値 : 5.5
# 平方根 : 2.345207879911715
# 面積 : 95.03317777109125

# Rubyで数値演算用のライブラリとして提供されているmodule Mathをextendして利用してみる。Math::PIとかMath.sqrt（）としなくても使える。

class MathMethods
    extend Math
    class << self
        def abs_sqrt_circle_area
            print "実数 : "
            num = gets.chomp.to_f
            puts "絶対値 : #{num.abs}"
            puts "平方根 : #{sqrt(num)}"
            puts "面積 : #{PI * num ** 2}"
        end
    end
end
MathMethods.abs_sqrt_circle_area