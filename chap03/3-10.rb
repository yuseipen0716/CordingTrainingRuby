# 正の整数値を読み込んで、それを3で割った値に応じて「その値は3で割り切れます。」「その値を3で割った余りは1です。」「その値を3で割った余りは2です。」のいずれかを表示するプログラムを作成せよ。
# 正でない値を読み込んだ場合は、「正でない値が入力されました。」と表示すること。

# 実行例
# 整数値: 1251
# その値は3で割り切れます。

#整数値を読み込み
print "整数値: "
number = gets.chomp.to_i

if number > 0 && number % 3 == 0
    puts 'その値は3で割り切れます。'
elsif number > 0 && number % 3 == 1
    puts 'その値を3で割った余りは1です。'
elsif number > 0 && number % 3 == 2
    puts 'その値を3で割った余りは2です。'
else
    puts '正でない値が入力されました。'
end
