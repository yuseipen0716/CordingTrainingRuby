# 曜日を表示して、その英語表現を入力させる英単語学習プログラムを作成せよ。
# ・出題する曜日は乱数で生成する。          。学習者が望む限り、何度も繰り返せる
# ・同一曜日を連続して出題しない

# 実行例
# 英語の曜日名を小文字で入力してください。
# 8月 : August
# 正解です。もう一度？ 1・・・Yes/0・・・No : 1
# 水曜日 : wenesday
# 違います。
# どうしますか? 1・・・再入力/0・・・正解を見る : 0
# 水曜日は'wednesday'です。
# もう一度？ 1・・・Yes/0・・・No : 0


# 処理の流れ
# 前回の問題同様の繰り返し処理。今回は問題文の表示が「7月」というような数値が混じった出し方ではなくて「火曜日」のような表示の仕方になるため、日本語表記verの配列を別で用意して利用した。
# print "#{random_month}月 : "というように配列のインデックス番号と異なる数値を引っ張ってきて表示する必要はなくなったので、乱数の生成はrando(0..6)と、0から6までの乱数生成とした。
puts '英語の曜日名を小文字で入力してください。'

week_en = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']
week_ja = ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日']

isContinue = 1
answer = 'default'
# isContinue == 1の値は本体処理を繰り返し
while isContinue == 1
    random_week = rand(0..6)
    # answer == 'default'つまり初回は繰り返しを抜けて、後の処理へ。
    # 前回回答したanswerを配列week_enに対してのindexメソッドの引数として渡して戻ってきた値（つまり前回のrandom_month-1の値）が等しいということは、/
    # /今回出題する問題が前回と同じ月ということになるので、再びrandom_weekを初期化する処理を繰り返して、前回と同じでない月が出題できる場合に後の処理に進むようにした。
    while answer != 'default' && (random_week) == week_en.index(answer)
        random_week = rand(0..6)
    end
    #=====出題される曜日が決定した後の処理======
    # 入力された回答が正解になるまで繰り返し
    until answer == week_en[random_week]
        print "#{week_ja[random_week]} : "
        answer = gets.chomp
        # 間違えたあと、どうするか選べるように。
        if answer != week_en[random_week]
            puts '違います。' 
            print "どうしますか? 1・・・再入力/0・・・正解を見る : "
            action_after_mistake = gets.chomp.to_i
            # 0を選択した場合には解答を表示して繰り返し処理から離脱。 正解した後の処理(54行目)以降へ
            if action_after_mistake == 0
                puts "#{week_ja[random_week]}は'#{week_en[random_week]}'です"
                break
            elsif action_after_mistake != 1
                puts '不正な値が入力されました。'
                break
                # 1を選択した場合にはこのif文を抜けて、もう一回untilのループへ。
            end
        end
    end
    #=====正解した後の処理======
    print '正解です。' if answer == week_en[random_week]
    print "もう一度? 1・・・Yes/0・・・No : "
    isContinue = gets.chomp.to_i
    # 1, 0 以外の値が入力された場合には繰り返しの処理を離脱する。
    if isContinue != 1 && isContinue != 0
        puts '不正な値が入力されました。'
        break
    end
end


# week = [{sunday: '日曜日'}, {monday: '月曜日'}, {tuesday: '火曜日'}, {wednesday: '水曜日'}, {thursday: '木曜日'}, {friday: '金曜日'}, {saturday: '土曜日'}]
# ハッシュを利用してもできそう？また後日振り返り