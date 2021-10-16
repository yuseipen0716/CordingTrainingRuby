# キーボードから次々と整数値を読み込んで、負でない値の合計と平均を求めるプログラムを作成せよ。なお、読み込んだ負の数の個数は平均を求める際の分母から除外すること。

# 整数を加算します。
# 何個加算しますか: 3
# 整数 : 2
# 整数 : -5
# 負の数は加算しません。
# 整数 : 13
# 合計は15です。
# 平均は7です。

puts '整数を加算します。'
print "何個加算しますか: "
limit = gets.chomp.to_i

# sumとavgの他に、負の数が入力された数を記録する変数negativeを用意。
sum = 0
avg = 0
negative = 0 
(1..limit).to_a.each do |i|
    print "整数 : "
    num = gets.chomp.to_i
    sum += num
    # 負の数が入力された場合は、メッセージを表示して、sumの値から先ほど入力した負の数を減じてsumに再代入。negativeカウンターを +1 する。
    if num < 0
        puts '負の数は加算しません。'
        negative += 1
        sum -= num
    end
    # 負の数の個数は分母から除外。
    avg = sum / (i - negative)
end

# 最初に入力された値（加算する個数）が1未満のときには合計、平均は表示せず、メッセージを返す。
if limit > 1
    puts "合計は#{sum}です。"
    puts "平均は#{avg}です。"
else
    puts '加算する個数は正の整数値で入力してください。'
end
