# 読み込んだ値の個数だけ記号文字を表示するプログラムを作成せよ（最後に改行文字を出力す）。表示は*と+を交互に行うこ。

# 実行例
# 何個表示しますか: 6
# *+*+*+
# 何個表示しますか: 5
# *+*+*

print "何個表示しますか: "
counter = gets.chomp.to_i
show = []

# 数値が0の時は改行しないように。
if counter > 0
    if counter.even? #偶数なら*+のセットをcounter/2セット分足し合わせる
        show << ('*'+'+') * (counter/2)
    else
        # 奇数の場合にはひとつおまけ。
        show << ('*'+'+') * (counter/2) + '*'
    end
end

puts show