# 読み込んだ整数値の符号を判定して表示する問題3-5のプログラムを、好きなだけ何度でも繰り返して入力表示できるようにしたプログラムを作成せよ。
# 実行例
# 整数値: 12
# その値は正です。
# もう一度？ 1・・・Yes/ 0・・・No : 1
# 整数値: -531
# その値は負です。
# もう一度？ 1・・・Yes/ 0・・・No : 0


print "整数値: "
number = gets.chomp.to_i

if number > 0
    puts 'その値は正です。'
elsif number == 0
    puts 'その値は0です。'
else
    puts 'その値は負です'
end
print "もう一度？ 1・・・Yes/ 0・・・No: "
answer = gets.chomp.to_i

until answer == 0
    print "整数値: "
    number = gets.chomp.to_i

    if number > 0
        puts 'その値は正です。'
    elsif number == 0
        puts 'その値は0です。'
    else
        puts 'その値は負です'
    end
    print "もう一度？ 1・・・Yes/ 0・・・No: "
    answer = gets.chomp.to_i
end

# untilの中身（25-36)が11-22行目のそのまま写しになっているのをどうにかしたい。11-22行目をsignというメソッドで定義して書いてみようと思ったが、うまくいかなかったので後日違う頭で解き直してみる。
