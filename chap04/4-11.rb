# 記号文字を任意の個数だけ出力する問題4-7をfor文で実現せよ

# 実行例
# 何個*を表示しますか: 12
# ************

print "何個*を表示しますか: "
counter = gets.chomp.to_i

if counter > 0
    i = 1
    # iがcounterになるまで*を改行なしに出力する繰り返し
    for i in i..counter
        i += 1
        print '*'
    end
end


# rubyっぽく each文で表現するとこうなるのだろうか。
# print "何個*を表示しますか: "
# counter = gets.chomp.to_i

# if counter > 0
#     i = 1
#     (i..counter).each do |i|
#         i += 1
#         print '*'
#     end
# end
