# キーボードから読み込んだ二つの文字列が等しいかどうかを判定するプログラムを作成せよ。

# 実行例
# 文字列s1 : ABC
# 文字列s2 : ABC
# s1 != s2です。
# s1とs2の中身は等しい。

print "文字列s1 : "
s1 = gets.chomp
print "文字列s2 : "
s2 = gets.chomp

# s1とs2の中身の文字が同じであっても別オブジェクトであるため、falseになる。
if s1.object_id == s2.object_id
    puts 's1 == s2です。'
else
    puts 's1 != s2です。'
end

# 文字列の中身が等しいかどうかを評価。↑のようなobjectの比較ではない。
if s1.eql?(s2)
    puts 's1とs2の中身は等しい'
else
    puts 's1とs2の中身は等しくない'
end

