# 連続する要素が同じ値をもつことのないように問題6-10のプログラムを改良せよ。

# 実行例
# 要素数 : 7
# a[0] = 2
# a[1] = 5
# a[2] = 1
# a[3] = 1 →こうならないように
# a[4] = 9
# a[5] = 6
# a[6] = 6 →こうならないように

print "要素数 : "
element = gets.chomp.to_i

# 乱数を配列aに格納（まず、配列の最初の要素だけ設定）
a = []
a << rand(1..10)
puts "a[#{0}] = #{a[0]}"
# 配列の2つ目の要素以降はここで繰り返し処理
(1..element-1).each do |i|
    random = rand(1..10)
    # 22行目でrandomという変数を1〜10の乱数で初期化。その値が配列の一つ前の要素と同じかどうかを評価して、同じならuntil以降の繰り返しへ。前の数値とことなれば、if文は抜けて a << randomへ
    if random == a[i-1]
        until random != a[i-1]
            random = rand(1..10)
        end
    end
    a << random
    puts "a[#{i}] = #{a[i]}"
end
