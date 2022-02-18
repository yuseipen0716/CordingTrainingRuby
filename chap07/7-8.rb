# a以上b以下の乱数を生成して、その値を返却するメソッドrandomを作成せよ。内部で乱数を生成する標準ライブラリを呼び出すこと。
# なおbの値がaより小さい場合には、aの値をそのまま返却すること。

# 実行例
# 乱数を生成します。
# 下限値 : 10
# 上限値 : 99
# 生成した乱数は55です。

# def random(a, b)
#     # 文字などが入力された場合にはreturn
#     return unless a.match(/\d/) && b.match(/\d/)
#     a = a.to_i
#     b = b.to_i
#     num = rand(a..b)
#     num = "#{a}(入力された下限値が上限値を超えていたため、下限値を出力しています。)" if a > b
#     puts "生成した乱数は#{num}です。"
# end

# puts '乱数を生成します。'
# print "下限値 : "
# min = gets.chomp
# print "上限値 : "
# max = gets.chomp

# random(min, max)

def random(a, b)
    if b <= a
        num = a
    else
        num = rand(a..b)
    end
end

puts '乱数を生成します。'
print "下限値 : "
min = gets.chomp.to_i
print "上限値 : "
max = gets.chomp.to_i

puts "生成した値は#{random(min, max)}です。"

# レビューいただいたように、randomメソッドには乱数生成の仕事に集中してもらうようにした。入出力は外部で対応。