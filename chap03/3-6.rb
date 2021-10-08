# 前問のプログラムの最後のelseを、else if (n == 0)に変更したらどうなるかを検討せよ。

# 前問でもn(number) == 0として記載してしまっていた。

# Java特有の問題？一旦スキップしますが、一応、前問の条件分岐の順番を変えてみる。

print "整数値: "
number = gets.chomp.to_i

if number > 0
    puts 'その値は正です。'
elsif number < 0
    puts 'その値は負です。'
else
    puts 'その値は0です'
end