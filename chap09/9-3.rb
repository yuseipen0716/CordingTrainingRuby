# 問題8-2で作成した<人間クラス>の配列を生成するプログラムを作成せよ。作成時に要素を初期化するもの、生成後に値を代入するものなど、複数のパターンを作ること。

# 実行例は長いので、一番下に書いておきます。

class Human
    attr_reader :name, :height, :weight
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end
    
    def gainWeight(w)
        @weight = weight + w
    end

    def reduceWeight(w)
        @weight = weight - w
    end
end

# 配列生成と同時に初期化するパターンと、配列と個々のインスタンスを別々に生成するパターン（キーボードから入力した値より）を1次元配列、2次元配列で実装

# ========== 1次元配列生成 ===========

# 配列p→配列生成と同時に要素を初期化する。(正確には同時でないかもだけど。)
p = Array.new(2)
p[0] = Human.new("桑野慎一郎", 170, 70)
p[1] = Human.new("高原徹也", 160, 59)

# 配列q→配列と個々のインスタンスを別々に生成するパターン
print "■配列qの要素数 : "
element_q = gets.chomp.to_i

q = Array.new(element_q)

(0..element_q-1).each do |i|
    print "名前 : "
    name = gets.chomp
    print "身長 : "
    height = gets.chomp.to_i
    print "体重 : "
    weight = gets.chomp.to_i
    q[i] = Human.new(name, height, weight)
end

# =========== 2次元配列生成  ===========

# 配列x→配列生成と同時に要素を初期化する。(正確には同時でないかもだけど。)
x = Array.new(3){Array.new(2)}
x = [
    [Human.new("竹田祥平", 175, 52), Human.new("橋川智之", 169, 60)],
    [Human.new("三宅秀樹", 178, 70), Human.new("小林佑介", 172, 61)],
    [Human.new("白水祐亮", 168, 59), Human.new("田中大喜", 165, 59)]
]

# 配列y→配列と個々のインスタンスを別々に生成するパターン
print "■配列yの行数 : "
row_y = gets.chomp.to_i
print "y[0]の列数 : "
column_y = gets.chomp.to_i
# 入力された数値を元に行列を作成
y = Array.new(row_y){Array.new(column_y)}
# 行列の各要素でインスタンスを生成
(0..row_y-1).each do |i|
    (0..column_y-1).each do |j|
        puts "y[#{i}][#{j}]"
        print "名前 : "
        name = gets.chomp
        print "身長 : "
        height = gets.chomp.to_i
        print "体重 : "
        weight = gets.chomp.to_i
        y[i][j] = Human.new(name, height, weight)
    end
end


# ============ 表示 ===============
puts '■配列p'
(0..p.size-1).each do |i|
    puts "\n" if i > 0
    print "No.#{i} #{p[i].name} #{p[i].height}cm #{p[i].weight}kg"
end

puts "\n"
puts '■配列q'
(0..q.size-1).each do |i|
    puts "\n" if i > 0
    print "No.#{i} #{q[i].name} #{q[i].height}cm #{q[i].weight}kg"
end

puts "\n" 
puts '■配列x'
(0..x.size-1).each do |i|
    puts "\n" if i > 0
    puts "第#{i}行"
    (0..x[0].size-1).each do |j|
    puts "\n" if j > 0
    print "No.#{i} #{x[i][j].name} #{x[i][j].height}cm #{x[i][j].weight}kg"
    end
end

puts "\n" 
puts '■配列y'
(0..y.size-1).each do |i|
    puts "\n" if i > 0
    puts "第#{i}行"
    (0..y[0].size-1).each do |j|
    puts "\n" if j > 0
    print "No.#{i} #{y[i][j].name} #{y[i][j].height}cm #{y[i][j].weight}kg"
    end
end

# 実行例
# ■配列qの要素数 : 2
# 名前 : 桑野慎一郎
# 身長 : 170
# 体重 : 70
# 名前 : 高原徹也
# 身長 : 160
# 体重 : 59
# ■配列yの行数 : 3
# y[0]の列数 : 2
# y[0][0]
# 名前 : 竹田祥平
# 身長 : 175
# 体重 : 52
# y[0][1]
# 名前 : 橋川智之
# 身長 : 169
# 体重 : 60
# y[1][0]
# 名前 : 三宅秀樹
# 身長 : 178
# 体重 : 70
# y[1][1]
# 名前 : 小林佑介
# 身長 : 172
# 体重 : 61
# y[2][0]
# 名前 : 白水祐亮
# 身長 : 168 
# 体重 : 59
# y[2][1]
# 名前 : 田中大喜
# 身長 : 165
# 体重 : 59
# ■配列p
# No.0 桑野慎一郎 170cm 70kg
# No.1 高原徹也 160cm 59kg
# ■配列q
# No.0 桑野慎一郎 170cm 70kg
# No.1 高原徹也 160cm 59kg
# ■配列x
# 第0行
# No.0 竹田祥平 175cm 52kg
# No.0 橋川智之 169cm 60kg
# 第1行
# No.1 三宅秀樹 178cm 70kg
# No.1 小林佑介 172cm 61kg
# 第2行
# No.2 白水祐亮 168cm 59kg
# No.2 田中大喜 165cm 59kg
# ■配列y
# 第0行
# No.0 竹田祥平 175cm 52kg
# No.0 橋川智之 169cm 60kg
# 第1行
# No.1 三宅秀樹 178cm 70kg
# No.1 小林佑介 172cm 61kg
# 第2行
# No.2 白水祐亮 168cm 59kg
# No.2 田中大喜 165cm 59kg