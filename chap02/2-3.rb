# 前問の変数部分、少数部を持つ実数値を代入するようにして、その結果を考察せよ。

def sum_average(x,y)
    x = x
    y = y
    sum = x + y
    average = (x + y)/2
    puts "xの値は#{x}です。"
    puts "xの値は#{y}です。"
    puts "合計は#{sum}です。"
    puts "平均は#{average}です。"
end

sum_average(63.4,18.3)

# xの値は63.4です。
# xの値は18.3です。
# 合計は81.7です。
# 平均は40.85です
# と、Rubyでは普通に計算できてしまう。