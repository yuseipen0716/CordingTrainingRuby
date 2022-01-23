# float型の変数を0.0から1.0まで0.01ずつ増やしていく様子と、int型の変数を0から1000までインクリメントした値を1000で割った値を求める様子を横に並べて表示するプログラムを作成せよ。

# 実行結果
# float          int 
# ----------------------
# 0.0000000    0.0000000
# 0.0010000    0.0010000
# ---------中略----------
# 0.9989907    0.9990000
# 0.9999907    1.0000000

puts 'float        int'
puts '---------------------'

increment_f = 0.0
increment_i = 0
puts "#{increment_f}     #{increment_i * 10 / 100}"
(0..99).each do |i|
    increment_f += 0.01
    increment_i += 0.1
    puts "#{increment_f}     #{increment_i * 10 / 100}"
end

# 若干、実行結果のズレあり。一旦先へ進みます。
