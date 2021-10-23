# クラス数、各クラスの人数・全員の点数を読み込んで、点数の合計点と平均点を求めるプログラムを作成せよ。合計点と平均点は、クラスごとのものと、全体のものとを表示すること。

# 実行例
# クラス数 : 2

# 1組の人数 : 3
# 1組1番の点数 : 50
# 1組2番の点数 : 63
# 1組3番の点数 : 72

# 2組の人数 : 2
# 2組1番の点数 : 79
# 2組2番の点数 : 43

#   組 |    合計    平均
# -----+---------------
#  1組 |    185    61.7
#  2組 |    122    61.0
# -----+---------------
#   計 |    307    61.4

# ======処理の流れ======
# クラス数を読み込んで、その数が要素数となる配列を作成。(処理1)
# クラスの人数を読み込んで、その数が要素数となる配列を作成し、先ほど作成した配列の要素の中に代入。(処理2)
# 合計点数や平均点数を出して出力する。(処理3)
# =====================

# (処理1)
print "クラス数 : "
num_class = gets.chomp.to_i
class_array = Array.new(num_class)

# (処理2)
# 実行例通りに表示できるように、i == 0のときとj == student-1の時には改行文字を出力
(0..num_class-1).each do |i|
    puts "\n" if i == 0
    print "#{i+1}組の人数 : "
    student = gets.chomp.to_i
    class_array[i] = Array.new(student)
    (0..student-1).each do |j|
        print "#{i+1}組#{j+1}番の点数 : "
        class_array[i][j] = gets.chomp.to_i
        puts "\n" if j == student-1
    end
end

# (処理3)
# class_array[k].countなどの値はそのままだと、each文の中でしか使えないので、外でも使えるように変数を定義。
score_sum = 0
num_student = 0
print "  組 |    合計    平均\n-----+---------------\n"
(0..num_class-1).each do |k|
    print " #{k+1}組 |    #{class_array[k].sum}    #{(class_array[k].sum / class_array[k].count.to_f).round(1)}\n"
    score_sum += class_array[k].sum
    num_student += class_array[k].count
end
print "-----+---------------\n  計 |    #{score_sum}    #{score_sum / (num_student.to_f).round(1)}\n"