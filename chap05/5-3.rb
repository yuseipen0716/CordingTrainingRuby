# float型の変数とdouble型の変数に値を読み込んで表示するプログラムを作成せよ。

# RubyのFloatクラスはC言語のdoubleで実装されているので、以下のようにした。

puts '変数xはfloat（JavaやC言語でいうところのdouble型）'
print "x: "
num = gets.chomp.to_f

puts num