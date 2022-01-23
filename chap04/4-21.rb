# 記号文字＊を並べてn段の正方形を表示するプログラムを作成せよ

# 実行例
# 正方形を表示します。
# 段数は: 3
# ***
# ***
# ***

puts '正方形を表示します。'

print "段数は: "
level = gets.chomp.to_i

(1..level).each do |i|
    puts "#{'*' * level}"
end
