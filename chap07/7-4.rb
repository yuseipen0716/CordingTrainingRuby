# 1からnまでの全整数の和を求めて返却するメソッドを作成せよ。 int sumUp(int n)

# 実行例
# 1からxまでの和をもとめます。
# xの値 : 5
# 1から5までの和は15です。

# 入力される数値は整数値という前提で実装
def sumUp(n)
    sum = 0
    (1..n).each do |i|
        sum += i 
    end
    puts "1から#{n}までの和は#{sum}です。"
end

puts '1からxまでの和をもとめます。'
print "xの値 : "
n = gets.chomp.to_i

sumUp(n)