# 文字列を読み込んで、その文字列を逆順に表示するプログラムを作成せよ。

# 実行例
# 文字列 : AB漢字
# 逆から読むと字漢BAです。

print "文字列 : "
char = gets.chomp

char_reverse = char.split('').reverse.join

puts "逆から読むと#{char_reverse}です。"