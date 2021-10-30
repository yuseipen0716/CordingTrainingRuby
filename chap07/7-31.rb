# int型整数xの絶対値、long型整数xの絶対値、float型実数xの絶対値、double型実数xの絶対値を求める、以下に示す多重定義されたメソッド群を作成せよ。
# absolute(int x), absolute(long x), absolute(float x), absolute(double x)

# 実行例
# int型整数aの値 : 5
# long型整数bの値 : -8
# float型実数cの値 : -13.6
# double型実数dの値 : 27.4
# aの絶対値は5です。
# bの絶対値は8です。
# cの絶対値は13.5です。
# dの絶対値は27.4です。

# Rubyにおいて、BignumはIntegerに統合された。また、FloatクラスはC言語でいうdouble型で実装されているため、今回はabsolute(int x)、absolute(float x)のみ実装する。
# なお、Rubyではメソッドの多重定義は行えないため、メソッド名は一部変更する。

def absolute_int(x)
    x.abs
end

def absolute_float(x)
    x.abs
end

print "int型整数aの値 : "
int_a = gets.chomp.to_i

print "long型整数bの値 : "
long_b = gets.chomp.to_i

print "float型実数cの値 : "
float_c = gets.chomp.to_f

print "double型実数dの値 : "
double_d = gets.chomp.to_f

puts "aの絶対値は#{absolute_int(int_a)}です。"
puts "bの絶対値は#{absolute_int(long_b)}です。"
puts "cの絶対値は#{absolute_float(float_c)}です。"
puts "dの絶対値は#{absolute_float(double_d)}です。"

# しょうがないですが、実行結果は解説のものとずれます。