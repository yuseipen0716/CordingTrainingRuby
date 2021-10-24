# 整数xのposビット目（最下位から0, 1, 2,・・・と数える)を、1にした値を返すメソッドset、0にした値を返すメソッドreset、反転した値を返すメソッドinverseを作成せよ
# set(x, pos)  reset(x, pos)  inverse(x, pos)


# 実行例
# 整数xのposビット目を操作します。
# x   : 1431655765
# pos : 10
# x               = 01010101010101010101010101010101
# set(x, pos)     = 01010101010101010101010101010101
# reset(x, pos)   = 01010101010101010101000101010101
# inverse(x, pos) = 01010101010101010101000101010101

def set(x, pos)
    # 逆順に並べ替えて配列のpos番目に1を代入
    x = x.split(//).reverse
    x[pos] = 1
    x = x.reverse.join
    # puts x
end


def reset(x, pos)
    x = x.split(//).reverse
    x[pos] = 0
    x = x.reverse.join
    # puts x
end


def inverse(x, pos)
    x = x.split(//).reverse
    # 逆順に並べ替えて配列のpos番目の値によって場合分けし、反転させるようにした。
    if x[pos] == '1'
        x[pos] = 0
    else
        x[pos] = 1
    end
    x = x.reverse.join
    # puts x
end

puts '整数xのposビット目を操作します。'
print "x   : "
x = gets.chomp.to_i
# xを符号ビット付きに変換し、初めにつく0bという文字のbは消して数値のみに。
x = sprintf("%#b", x).delete('b')
print "pos : "
pos = gets.chomp.to_i

puts "x               = #{x}"
puts "set(x, pos)     = #{set(x, pos)}"
puts "reset(x, pos)   = #{reset(x, pos)}"
puts "inverse(x, pos) = #{inverse(x, pos)}"
