# 二つの整数値を読み込んで、小さい方の数以上で大きい方の数以下の全整数を小さい頃から順に表示するプログラムを作成せよ。

# 実行例
# 整数A: 33
# 整数B: 28
# 28 29 30 31 32 33

# #二つの整数値を読み込み
# print "整数値A: "
# num_a = gets.chomp.to_i
# print "整数値B: "
# num_b = gets.chomp.to_i

# #二つの整数値の大小を比較
# if num_a > num_b
#     big = num_a
#     num_a = num_b
#     num_b = big
# # else num_a < num_b
# #     big = num_b
# #     num_b = num_a
# #     num_a = num_b
# end

# #大きい方の数以下の整数を出力 num_a == bigとすると、num_a == bigとなったときに処理の繰り返しが終わってしまうので、最後の数を表示させるためにbig + 1 としてみた。
# #実行結果が10 11 12 13 14 15 16 17 18 19 20 %のように最後に%がつくのが気になる。
# until num_a == big +1
#     print "#{num_a} "
#     num_a += 1
# end

# reviewいただいた。
# 14-23行目の部分、二つの値の大小を比較して二値を変換する処理はnum_a > num_bの時だけで十分なので以下のように書き直してみました。繰り返しの処理もeachを使ったほうがシンプルかも。

#二つの整数値を読み込み
print "整数値A: "
num_a = gets.chomp.to_i
print "整数値B: "
num_b = gets.chomp.to_i

if num_a > num_b
    big = num_a
    num_a = num_b
    num_b = big
end

(num_a..num_b).each do |i|
    print "#{i} "
end
