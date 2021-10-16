# 問題4-3の数当てゲームを、当てるべき数を0〜99に変更するとともに、プレイヤーが入力できる回数に制限を設けたプログラムを作成せよ。
# 制限時間内に当てられなかった場合は、正解を表示してゲームを終了すること。

# 実行例
# 数当てゲーム開始!!
# 0-99の数を当ててください
# 残り6回。いくつかな: 50
# もっと大きな数だよ。
# 残り5回。いくつかな: 75
# もっと小さな数だよ。
# 残り5回。いくつかな: 62
# 3回で当たりましたね。

# 制限時間は6回とする。制限時間もプレイヤーが入力するようにもできるけど、今回は解説に則って固定とする。

#0-99の整数の乱数を正解の数として設定
correct_number = rand(0..99)
limit = 6

puts '数当てゲーム開始!!'
puts '0-99の数を当ててください'

# 数を答えてそれに対しての処理を繰り返し。
# 範囲を(1..limit)とすると、limit < iとなる前に繰り返し処理が終わってしまう。今回はif文を使って条件を分け、limit < iとなった時に繰り返し処理から離脱するようにしたかったので、以下のようにした。
(1..limit+1).to_a.each do |i|
    if limit < i
        puts "正解は#{correct_number}です。\nゲームを終了します。"
        break
    else
        print "残り#{limit - i + 1}回。いくつかな: "
        answer = gets.chomp.to_i
        if answer < 0 || answer > 99
            puts '0-99の数を当ててください'
        elsif answer == correct_number
            puts "#{i}回で当たりましたね。"
            break
        elsif answer > correct_number
            puts 'もっと小さな数だよ'
        else 
            puts 'もっと大きな数だよ'
        end
    end
end
