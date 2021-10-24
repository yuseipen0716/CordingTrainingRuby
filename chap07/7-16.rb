# 配列aの要素の最小値を求めるメソッドminOfを作成せよ。

# 実行例
# 人数は : 4
# 4人の身長と体重を入力せよ。
# 1番目の身長 : 175
# 1番目の体重 : 72
# 2番目の身長 : 163
# 2番目の体重 : 82
# 3番目の身長 : 150
# 3番目の体重 : 49
# 4番目の身長 : 181
# 4番目の体重 : 76
# 最も背が低い人の身長 : 150cm
# 最も痩せている人の体重 : 49kg

def minOf(a)
    # 渡された配列aに対してminメソッドを使用して値を返す
    a.min
end

print "人数は : "
people = gets.chomp.to_i

puts "#{people}人の身長と体重を入力せよ。"

height = []
weight = []
# キーボードから読み込んだ値をそれぞれの配列に格納する繰り返し処理
(1..people).each do |i|
    print "#{i}番目の身長 : "
    height << gets.chomp.to_i
    print "#{i}番目の体重 : "
    weight << gets.chomp.to_i
end

puts "最も背が低い人の身長 : #{minOf(height)}cm"
puts "最も痩せている人の体重 : #{minOf(weight)}kg"