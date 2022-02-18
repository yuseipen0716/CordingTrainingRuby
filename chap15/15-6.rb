# 文字列s1の中に文字列s2が含まれているかどうかを調べるプログラムを作成せよ。含まれていない場合は、「s1中にs2は含まれません。」と表示すること。
# 含まれている場合は、一致する部分が上下で揃うように二つの文字列を縦に並べて表示すること。

# 実行例
# 文字列s1 : ABCDEFGHI
# 文字列s2 : EFG
# ABCDEFGHI
#     EFG


print "文字列s1 : "
s1 = gets.chomp
print "文字列s2 : "
s2 = gets.chomp

if s1.match(s2)
    # String#matchメソッドを使用して、s1の中にs2を含むかを評価。真ならs1中のs2の文字がはじまるインデックス番号分だけスペースを開けて出力するようにする。(そうすると、一致する部分が上下で揃う。)
    s2 = ' ' * s1.index(s2) + s2
    puts "#{s1}"
    puts "#{s2}"
else
    puts 's1中にs2は含まれません。'
end

