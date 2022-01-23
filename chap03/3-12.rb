# 二つの実数値を読み込んで、大きい方の値を表示するプログラムを作成せよ。

# 実行例
# 実数a: 25.7
# 実数b: 15.3
# 大きい方の値は25.7です。

# 二つの実数値を読み込み、それぞれ変数に格納。
print "実数a: "
num_a = gets.chomp.to_f
print "実数b: "
num_b = gets.chomp.to_f

if num_a > num_b
    big = num_a
elsif num_a < num_b
    big = num_b
else
    puts '実数aと実数bは同じ値です。'
end
puts "大きい方の値は#{big}です。"
