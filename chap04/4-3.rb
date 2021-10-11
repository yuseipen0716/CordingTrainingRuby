# 2桁の整数値(10ー99)を当てさせる「数当てゲーム」を作成せよ

# 実行例
# 数当てゲーム開始!!
# 10-99の数を当ててください
# いくつかな: 50
# もっと大きな数だよ。
# いくつかな: 75
# 正解です。

#10-99の整数の乱数を読み込み
correct_number = rand(10..99)

puts '数当てゲーム開始!!'
puts '10-99の数を当ててください'

answer = 0

# answerがcorrect_numberと一致するまで繰り返し
while answer != correct_number
    print "いくつかな: "
    answer = gets.chomp.to_i

    if answer < 10 || answer > 99
        puts '2桁の正の整数を入力してください'
    elsif answer == correct_number
        puts '正解です。'
    elsif answer > correct_number
        puts 'もっと小さな数だよ'
    else 
        puts 'もっと大きな数だよ'
    end
end
