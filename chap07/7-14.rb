# 整数xのposビット目を最下位として連続するn個のビットを、1にした値を返すメソッドsetN、0にした値を返すメソッドresetN、反転した値を返すメソッドinverseNを作成せよ

# 実行例
# 整数xのposビット目を操作します。
# x   : 1431655765
# pos : 7
# n   : 6
# x                = 01010101010101010101010101010101
# setN(x, pos)     = 01010101010101010101111111010101
# resetN(x, pos)   = 01010101010101010100000001010101
# inverseN(x, pos) = 01010101010101010100101011010101

# x                = 01010101010101010101010101010101
# setN(x, pos)     = 01010101010101010101111111010101
# resetN(x, pos)   = 01010101010101010100000001010101
# inverseN(x, pos) = 01010101010101010100101011010101

def setN(x, pos, n)
    x = x.split(//).reverse
    # xを分解して逆順にした配列の、pos番目から連続するnビットに対して１を再代入し続ける繰り返し処理。
    (pos..pos+n-1).each do |i|
        x[i] = 1
    end
    x = x.reverse.join
end

def resetN(x, pos, n)
    x = x.split(//).reverse
    # xを分解して逆順にした配列の、pos番目から連続するnビットに対して０を再代入し続ける繰り返し処理。
    (pos..pos+n-1).each do |j|
        x[j] = 0
    end
    x = x.reverse.join
end

def inverseN(x, pos, n)
    x = x.split(//).reverse
    # xを分解して逆順にした配列の、pos番目から連続するnビットに対して要素が'0'なら1を'1'なら0を再代入する処理
    (pos..pos+n-1).each do |k|
        if x[k] == '0'
            x[k] = 1
        else
            x[k] = 0
        end
    end
    x = x.reverse.join
end

puts '整数xのposビット目を操作します。'

print "x   : "
x = gets.chomp.to_i
x = sprintf("%#b", x).delete('b')

print "pos : "
pos = gets.chomp.to_i

print "n   : "
n = gets.chomp.to_i

puts "x                = #{x}"
puts "setN(x, pos)     = #{setN(x, pos, n)}"
puts "resetN(x, pos)   = #{resetN(x, pos, n)}"
puts "inverseN(x, pos) = #{inverseN(x, pos, n)}"