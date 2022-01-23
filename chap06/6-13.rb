# 配列の要素の並びをシャッフルする（ランダムな順となるようにかき混ぜる）プログラムを作成せよ。

# 実行例
# 要素数 : 7
# a[0] = 22
# a[1] = 57
# a[2] = 11
# a[3] = 32
# a[4] = 91
# a[5] = 68
# a[6] = 70
# 要素をかき混ぜました
# a[0] = 68
# a[1] = 57
# a[2] = 70
# a[3] = 22
# a[4] = 32
# a[5] = 91
# a[6] = 11

print "要素数 : "
element = gets.chomp.to_i

a = []
# 入力された値を配列aに格納
(1..element).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_i
end

# shuffleメソッドを利用して配列の要素の並びを破壊的に変更。（インデックス番号も変わる）
a_shuffle = a.shuffle!
puts '要素をかき混ぜました。'

(1..element).each do |i|
    puts "a[#{i-1}] = #{a_shuffle[i-1]}"
end
