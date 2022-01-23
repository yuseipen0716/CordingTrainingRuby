# 二つの整数82と17の和と差表示するプログラムを作成せよ（いろいろな表示方法を試してみよう）

# puts 82 + 17
# puts 82 - 17

def addition_subtraction(a,b)
    puts a + b
    puts a - b 
end

addition_subtraction(82,17)

# 2つ目の実行結果では和と差を出す計算式も出力されるようになっている。
def addition_subtraction_formula(a,b)
    puts "#{a.to_s} + #{b.to_s} = #{a + b}"
    puts "#{a.to_s} - #{b.to_s} = #{a - b}"
end

addition_subtraction_formula(82,17)