# キーボードから読み込んだ値の個数だけ*を表示するプログラムを作成せよ。最後に改行文字を出力すること。ただし、読み込んだ値が1未満であれば、改行文字を出力してはならない。

# 実行例
# 何個*を表示しますか: 12
# ************

print "何個*を表示しますか: "
counter = gets.chomp.to_i

# if counter > 0
#     show = []
#     show << '*' * counter

#     puts show
# end

puts '*' * counter if counter > 0
