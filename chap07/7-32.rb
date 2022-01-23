# 問題7-12のメソッドprintBitsは、int型整数値の内部のビットを表示するものであった。他の整数型に対しても同様の働きを行う、多重定義されたメソッド群を作成せよ。

# void printBits(x)

# 実行例
# byte型整数aの値 : 30
# short型整数bの値 : 300
# int型整数cの値 : 30000
# long型整数dの値 : 3000000
# aのビット : 011110
# bのビット : 0100101100
# cのビット : 0111010100110000
# dのビット : 01011011100011011000000


# Rubyでは整数型はInteger型にまとめられているので、今回はprintBits(int x)として実装。



def printBits(x)
    x_bit = sprintf("%#b", x)
    # このままだと、変換後の文字列の先端が0bみたいになっているはずなので、扱いやすいようにbの文字を削除
    x_bit = x_bit.delete('b')
end

print "byte型整数aの値 : "
byte_a = gets.chomp.to_i

print "short型整数bの値 : "
short_b = gets.chomp.to_i

print "int型変数cの値"
int_c = gets.chomp.to_i

print "long型変数dの値 : "
long_d = gets.chomp.to_i

puts "aのビット : #{printBits(byte_a)}"
puts "bのビット : #{printBits(short_b)}"
puts "cのビット : #{printBits(int_c)}"
puts "dのビット : #{printBits(long_d)}"