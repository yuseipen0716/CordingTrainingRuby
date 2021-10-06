# 三つのint型変数に値を代入し、合計と平均を求められるプログラムを作成せよ
# Rubyでは変数に代入する際の型宣言がないので普通に変数に整数を代入する。

def sum_average(x,y,z)
    sum = x + y + z
    # 何回もx + y + zと書くのではなく、せっかく上でsumという変数に式を代入したんだから、それを利用してあげる。
    average = sum/3
    puts "xの値は#{x}です。"
    puts "yの値は#{y}です。"
    puts "zの値は#{z}です。"
    puts "合計は#{sum}です。"
    puts "平均は#{average}です。"
end

sum_average(63,18,52)