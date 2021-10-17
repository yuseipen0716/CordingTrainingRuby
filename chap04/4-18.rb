# 読み込んだ整数値の全ての約数と、その個数を表示するプログラムを作成せよ。

# 実行例
# 整数値: 12
# 1 2 3 4 6 12
# 約数は6個です。

print "整数値: "
num = gets.chomp.to_i

counter = 0
(1..num).each do |i|
    div = num/i
    # 1からnumまでiで割る繰り返し処理。割り切れる時はprintで半角スペースを付けて出力して、counterの数字を+1する。
    if num % i == 0
        print i.to_s + ' '
        counter += 1
    end
end
puts "\n約数は#{counter}個です。"
