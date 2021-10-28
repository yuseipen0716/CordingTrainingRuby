# 月1〜12の数値として表示して、その英語表現を入力させる英単語学習プログラムを作成せよ。
# ・出題する月の値は乱数で生成する。          。学習者が望む限り、何度も繰り返せる
# ・同一月を連続して出題しない
# 文字列s1とs2が等しい（全ての文字等しい）かどうかの判定はs1.equals(s2)によって行える。

# 実行例
# 英語の月名を入力してください。
# なお、先頭は大文字で、2文字目以降は小文字とします。
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

puts "英語の月名を入力してください。\nなお、先頭は大文字で、2文字目以降は小文字とします。"

months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

continued = 1
answer = 'default'
# isContinue == 1の値は本体処理を繰り返し
while continued == 1
    random_month = rand(1..12)
    # answer == 'default'つまり初回は繰り返しを抜けて、後の処理へ。
    # 前回回答したanswerを配列monthsに対してのindexメソッドの引数として渡して戻ってきた値（つまり前回のrandom_month-1の値）が等しいということは、/
    # /今回出題する問題が前回と同じ月ということになるので、再びrandom_monthを初期化する処理を繰り返して、前回と同じでない月が出題できる場合に後の処理に進むようにした。
    while answer != 'default' && (random_month - 1) == months.index(answer)
        random_month = rand(1..12)
    end
    #=====出題される月が決定した後の処理======
    # 入力された回答が正解になるまで繰り返し
    until answer == months[random_month - 1]
        print "#{random_month}月 : "
        answer = gets.chomp
        puts '違います。' if answer != months[random_month - 1]
    end
    #=====正解した後の処理======
    print "正解です。もう一度? 1・・・Yes/0・・・No : "
    continued = gets.chomp.to_i
    # 1, 0 以外の値が入力された場合には繰り返しの処理を離脱する。
    if continued != 1 && continued != 0
        puts '不正な値が入力されました。'
        break
    end
end

# 修正コメント
# 同一月を連続して出題しないという要件が満たされていなかった。
# 繰り返し処理の外にanswer = 'default'を設定。
# 繰り返し本体の中にもうひとつwhileかなにかの繰り返し処理を入れる。
# answerが'default'ではなく、かつ(random_month-1)がmonths.index(answer)と同じ場合に繰り返しrandom_monthの初期化の部分から繰り返しネスト