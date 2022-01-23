# 二つの変数xとyの合計と平均を求めて表示するプログラムを作成せよ。なお、xとyには適当な値を代入しておくこと。

def sum_average(x,y)
    sum = x + y
    average = sum/2
    puts "xの値は#{x}です。"
    puts "yの値は#{y}です。"
    puts "合計は#{sum}です。"
    puts "平均は#{average}です。"
end

sum_average(63,18)
