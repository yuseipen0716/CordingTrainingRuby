# 月1〜12の数値として表示して、その英語表現を入力させる英単語学習プログラムを作成せよ。
# ・出題する月の値は乱数で生成する。          。学習者が望む限り、何度も繰り返せる
# ・同一月を連続して出題しない
# 文字列s1とs2が等しい（全ての文字等しい）かどうかの判定はs1.equals(s2)によって行える。

# 実行例
# 英語の月名を入力してください。
# なお、銭湯は大文字で、2文字目以降は小文字とします。
# 8月 : August
# 正解です。もう一度？ 1・・・Yes/0・・・No : 1
# 5月 : March
# 違います。
# 5月 : May
# 正解です。もう一度？ 1・・・Yes/0・・・No : 0


# 処理の流れ
# monthsという配列を用意して、その長に1月から12月の英単語を順に入れておく。
# rand(1..12)で1~12の乱数を生成して、問題を出題。
# 入力されたデータがmonth[rand(1..12)]と等しいかどうかを評価して、等しくなかった場合はメッセージを出力して、同じ問題を正解するまで続ける。
# 正解した後は続けるかやめるかを聞いて、繰り返しor終了。

months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

isContinue = 1
# isContinue == 1の値は本体処理を繰り返し
while isContinue == 1
    random_month = rand(1..12)
    answer = 'default'
    # 入力された回答が正解になるまで繰り返し
    until answer == months[random_month - 1]
        print "#{random_month}月 : "
        answer = gets.chomp
        puts '違います。' if answer != months[random_month - 1]
    end
    #=====正解した後の処理======
    print "正解です。もう一度? 1・・・Yes/0・・・No : "
    isContinue = gets.chomp.to_i
    # 1, 0 以外の値が入力された場合には繰り返しの処理を離脱する。
    if isContinue != 1 && isContinue != 0
        puts '不正な値が入力されました。'
        break
    end
end
