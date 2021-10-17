# 0.0から1.0までに0.001おきに、その値と、その値の2乗を表示するプログラムを作成せよ

# 0.0から1.0まで0.001単位で増やして2乗値2を表示(繰り返しをfloatで制御)

# 実行結果
#   x      xの2乗  
# ----------------
# 0.000  0.0000000
# 0.001  0.0000010
# 0.002  0.0000040
# ------中略------
# 0.998  0.9959855
# 0.999  0.9979824
# 1.000  0.9999814

# puts ' x      xの2乗  '
# puts '----------------'

# increment_x = 0.000
# square_x = 0.000
# puts "#{increment_x}"
# (1..1000).to_a.each do |i|
#     increment_x += 0.001
#     square_x = increment_x ** 2
#     puts "#{increment_x}  #{square_x}"
# end

# こちらうまく表示できず。


# 0.0から1.0まで0.001単位で増やして2乗値2を表示(繰り返しをintで制御)

puts ' x      xの2乗  '
puts '----------------'

increment_x = 0.000
square_x = 0.000
puts "#{increment_x}"
(1..1000).to_a.each do |i|
    increment_x += 0.001
    square_x = increment_x ** 2
    puts "#{increment_x}  #{square_x}"
end