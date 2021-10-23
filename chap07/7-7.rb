# 文字cをn個表示するメソッドputCharsと、そのメソッドを内部で呼び出して文字'*'をn個だけ連続表示するメソッドputStarsを作成せよ。
# さらに、それらのメソッドを利用して直角三角形を表示すするプログラムを作成せよ。

# 実行例
# 左下直角の二等辺三角形を表示します。
# 段数は: ６
# *
# **
# ***
# ****
# *****
# ******

# 文字cをn個表示するメソッド
def putChars(c, n)
    puts "#{c * n}"
end

# 文字'*'をn個だけ連続表示するメソッド
def putStars(n)
    putChars('*', n)
end

print "段数は : "
n = gets.chomp.to_i

# *を連続表示して二等辺三角形に
(1..n).each do |i|
    putStars(i)
end
