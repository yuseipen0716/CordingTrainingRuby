# 1からnまでの和を求めるプログラムをfor文で実現せよ。

# 実行例
# 1からnまでの和を求めます。
# nの値: 5
# 1からnまでの和は15です。

puts '1からnまでの和を求めます。'
print "nの値: "
num = gets.chomp.to_i

numbers = (1..num).to_a

sum = 0
for i in 1..num
    sum += i
end

puts "1からnまでの和は#{sum}です。"

# eachでも。
# sum = 0
# numbers.each do |n|
#     sum += n
# end

# puts "1からnまでの和は#{sum}です。"