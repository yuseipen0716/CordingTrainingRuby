# テストの点数の合計点・平均点・最高点・最低点・を求めて表示するプログラムを作成せよ。人数と点数は、キーボードから読み込むこと。

# 実行例
# 人数 : 5
# 点数を入力せよ。
# 1番の点数 : 72 
# 2番の点数 : 54
# 3番の点数 : 68 
# 4番の点数 : 32 
# 5番の点数 : 92
# 合計点は318点です。
# 平均点は63.6点です。
# 最高点は92点です。
# 最低点は32点です。 

print "人数 : "
people = gets.chomp.to_i

puts '点数を入力せよ。'

points = []

(1..people).each do |i|
    print "#{i}番目の点数 : "
    points << gets.chomp.to_i
end

puts "合計点は#{points.sum}点です。"
puts "合計点は#{points.sum. / people.to_f}点です。"
puts "合計点は#{points.max}点です。"
puts "合計点は#{points.min}点です。"

