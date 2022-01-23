# 前問のプログラムを論理歩数演算子!を用いて書き換えよ。

# 二つの整数を読み込む。ここでは入力データは整数である前提で実装する。
print "変数A: "
number_a = gets.chomp.to_i
print "変数B: "
number_b = gets.chomp.to_i

# 変数Bに0を入力するとZeroDivisionErrorが起きてしまうので、最初の条件で弾き出しておく。
if number_b == 0
    puts "無効な数値が入力されました。#{number_b}"
elsif number_a % number_b != 0
    puts 'BはAの約数ではありません。'
else
    puts 'BはAの約数です。'
end
