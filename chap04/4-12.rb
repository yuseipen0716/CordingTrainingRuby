# 正の整数値を0までカウントダウンする問題4-5をfor文で実現せよ

# 実行例
# カウントダウンします。
# 正の整数値: 4
# 4
# 3
# 2
# 1
# 0

countdown = 0
puts 'カウントダウンします。'
# 入力された数値が0以下であれば入力画面を繰り返し
while countdown <= 0
    print "正の整数値: "
    countdown = gets.chomp.to_i
end
# ここを通り抜けた数値は正の数値
#================================================================
# ここまでは以前の問題と同様

i = 0
# 変数i countdownと等しくなるまで繰り返し
for i in i..countdown
    i += 1
    # puts countdown -= 1とすると、カウントダウンの初期値がcountdown-1となってしまうため。
    puts (countdown -= 1) + 1
end


# 前問同様、eachでも書いてみる。
# i = 0
# (i..countdown).each do |i|
#     i += 1
#     puts (countdown -= 1) + 1
# end