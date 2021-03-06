# 3桁の正の整数値(100=999)を読み込むプログラムを作成せよ。3桁の正の整数値でない値が入力された場合は再入力させること。

# 実行例
# 3桁の正の整数値: 59
# 3桁の正の整数値: 1052
# 3桁の正の整数値: 235
# 235と入力しましたね。

# 3桁の正の整数値を読み込み
# print "3桁の正の整数値: "
# number_3digit = gets.chomp.to_i

# if number_3digit >= 100 && number_3digit <= 999
# else
#     while number_3digit >= 100 && number_3digit <= 999
#         print "3桁の正の整数値: "
#         number_3digit = gets.chomp.to_i
#     end
# end
# puts "#{number_3digit}と入力しましたね"


# untilのところをwhileで書くとこうかな
# while number_3digit < 100 || number_3digit > 999

number_3digit = 0
until number_3digit >= 100 && number_3digit <= 999
    print "3桁の正の整数値: "
    number_3digit = gets.chomp.to_i
end

puts "#{number_3digit}と入力しましたね"

# reviewを参考にさせていただきました。たしかにこれだと、ifで条件を設定しなくても行いたい処理が繰り返せる
# 一回立ち止まって、どうにかまとめられるような処理がないか探す癖をつける。