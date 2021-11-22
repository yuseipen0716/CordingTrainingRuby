# String型の文字列を生成するプログラムを作成せよ。生成は複数の方法で行うこと。

# 解説のように、String.newで配列自体を呼び出すことはできなかった。

# 実行例
# 文字列 : HAL
# s1 = ABC
# s2 = 
# s3 = ABCDEFGHIJ
# s4 = FGH
# s5 = XYZ
# s6 = HAL

c = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']

s1 = 'ABC'
s2 = String.new
s3 = c[0] + c[1] +c[2] + c[3] +c[4] + c[5] +c[6] + c[7] +c[8] + c[9]
s4 = ""
(5..7).each do |i|
    s4 += c[i]
end
# 滅多に使わないみたい。
s5 = String.new('XYZ')
print "文字列 : "
s6 = gets.chomp

# おまけ
# joinメソッドで配列の要素を連結して文字列に
s7 = [10, 20, 30].join
# to_sメソッドを使って、Integer → String
s8 = 123.to_s
# ダブルクオートと\uを使用してUnicodeのコードポイントから文字列を作成 あいう
s9 = "\u3042\u3044\u3046"

puts "s1 = #{s1}"
puts "s2 = #{s2}"
puts "s3 = #{s3}"
puts "s4 = #{s4}"
puts "s5 = #{s5}"
puts "s6 = #{s6}"
puts "s7 = #{s7}"
puts "s8 = #{s8}"
puts "s9 = #{s9}"