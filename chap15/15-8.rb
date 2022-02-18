# 二つの文字列の代償関係を判定するプログラムを作成せよ。

# 実行例
# 文字列s1 : ABC
# 文字列s2 : XYZ
# s1のほうが小さい

print "文字列s1 : "
s1 = gets.chomp
print "文字列s2 : "
s2 = gets.chomp

if s1 < s2
    puts 's1の方が小さい'
elsif s1 > s2
    puts 's2の方が小さい'
else
    puts 's1とs2は等しい'
end

# チェリー本の著者がRubyにおける文字列の代償比較について、チェリー本の補足として記事を書いてくださっていた。https://qiita.com/jnchito/items/077f6d541d53152aa680