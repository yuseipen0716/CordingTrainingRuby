# 要素型がint型である配列を作り、全要素を1〜10の乱数で埋め尽くす(1以上10以下の値を代入する)プログラムを作成せよ。要素数はキーボードから読み込むこと。

# 実行例
# 要素数 : 7
# a[0] = 2
# a[1] = 5
# a[2] = 1
# a[3] = 3
# a[4] = 9
# a[5] = 6
# a[6] = 6

print "要素数 : "
element = gets.chomp.to_i

# 入力された数値を配列aに格納
a = []
(1..element).each do |i|
    # 1以上10以下の乱数を配列aに格納
    a << rand(1..10)
    puts "a[#{i-1}] = #{a[i-1]}"
end