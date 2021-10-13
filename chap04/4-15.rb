# 前問のプログラムを書き換えて、鹿さんの ”式”を表示するプログラムを作成せよ

# 実行例
# 1からnまでの和を求めます。
# nの値: 1
# 1 = 1
# nの値: 3
# 1 + 2 + 3 = 6
# nの値: 5
# 1 + 2 + 3 + 4 + 5 = 15

puts '1からnまでの和を求めます。'
print "nの値: "
num = gets.chomp.to_i

numbers = (1..num).to_a

sum = 0
# 1からnum-1の値まではiの値改行なしで、+とくっつけて表示する。（1 + 2 + 3 + ...+ (num-1) + )となる。＋とかをくっつける都合でString型に変換した。
for i in 1..num-1
    # sumにはiを足していく
    sum += i
    print i.to_s + ' + '
end
# このfor文で （1 + 2 + 3 + ...+ (num-1) + )の続きの(num = sum)を出力するようにする。 sumにはnumの値を足しておく。
for n in num..num
    sum += n
    print n.to_s + ' = ' + sum.to_s
end



# eachでも。
# sum = 0
# (1..num-1).to_a.each do |i|
#     sum += i
#     print i.to_s + ' + '
# end

# (num..num).to_a.each do |n|
#     sum += n
#     print n.to_s + ' = ' + sum.to_s
# end

