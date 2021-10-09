# 二つの整数値を読み込んで、小さい方の値と大きい方の値の両方を表示するプログラムを作成せよ。二つの整数値が等しい場合には、「二つの値は同じです。」と表示すること。

# 実行例１
# 整数値a: 12
# 整数値b: 3
# 小さい方の値は3です。
# 大きい方の値は12です。
# 実行例2
# 整数値a: 17
# 整数値b: 17
# 二つの値は同じです。

def big_small
    print "整数値a: "
    num_a = gets.chomp.to_i
    print "整数値b: "
    num_b = gets.chomp.to_i
# 二つの値が同じ場合はメソッドから離脱
    return puts '二つの値は同じです。' if num_a == num_b
        
    if num_a > num_b
        big = num_a
        small = num_b
    else
        big = num_b
        small = num_a
    end
    puts "小さい方の値は#{small}です。"
    puts "大きい方の値は#{big}です。"
end

big_small
