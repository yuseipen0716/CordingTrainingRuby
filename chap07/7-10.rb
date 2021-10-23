# 以下の四つの問題をランダムに出題する3桁の整数の暗算トレーニングプログラムを作成せよ。
# x + y + z    x + y - z    x - y + z    x - y - z

# 実行例
# 暗算力トレーニング！！
# 341 + 616 - 741 = 215
# 違いますよ！
# 341 + 616 - 741 = 216
# もう一度＜Yes・・・1/No・・・0＞ : 1
# 674 + 977 + 760 = 2411
# もう一度＜Yes・・・1/No・・・0＞ : 0

# ==========処理の流れ===========
# 4つの乱数を生成して計算式を選択
# x, y, zに三桁の整数の乱数を代入。
# 回答と解答があっているかどうかの評価
# 繰り返しor not

def mental_arithmetic
    isContinue = 1
    while isContinue == 1
        # x, y, zに三桁の乱数を代入
        x = rand(100..999)
        y = rand(100..999)
        z = rand(100..999)
        # 計算式のリストは配列にしておく。
        formula = [(x + y + z), (x + y - z), (x - y + z ), (x - y - z)]
        # 問題を選択するための乱数。
        question_number = rand(0..3)
        answer = 0
        # 正解するまで繰り返し。
        until answer == formula[question_number]
            case question_number
            when 0
                print "#{x} + #{y} + #{z} = "
            when 1
                print "#{x} + #{y} - #{z} = "
            when 2
                print "#{x} - #{y} + #{z} = "
            else
                print "#{x} - #{y} - #{z} = "
            end
            answer = gets.chomp.to_i
            if answer != formula[question_number]
                puts '違いますよ!'
            else 
                print "もう一度＜Yes・・・1/No・・・0＞ : "
                isContinue = gets.chomp.to_i
                return if isContinue != 0 && isContinue != 1
            end
        end
    end
end

mental_arithmetic
