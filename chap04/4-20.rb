# 月を整数値として読み込んで、それに対応する季節を表示するプログラムを作成せよ。好きなだけ何度でも繰り返して入力・表示できるようにし、月の読み込みにおいて1〜12以外の値が入力された場合ば、再入力させるようにすること。

# 実行例
# 季節を求めます。
# 何月ですか: 13
# 何月ですか: 6
# それは夏です。
# もう一度？ 1・・・Yes/0・・・No : 1
# 何月ですか: 11
# それは秋です。
# もう一度？ 1・・・Yes/0・・・No : 0

puts '季節を求めます。'

isContinued = 1
# isContinued == 1 の間は以下の処理を繰り返す。
while isContinued == 1
    month = 0
    # 1-12が入力されるまでは繰り返し月を聞く
    until month >= 1 && month <= 12
        print "何月ですか: "
        month = gets.chomp.to_i
    end

    case month
    when 3..5
        season = '春'
    when 6..8
        season = '夏'
    when 9..11
        season = '秋'
    else 
        season = '冬'
    end

    puts "それは#{season}です。"
    print "もう一度？ 1・・・Yes/ 0・・・No: "
    isContinued = gets.chomp.to_i

    # 0,1以外が入力された場合には処理から離脱
    if isContinued != 1 && isContinued != 0
        puts '不正な値が入力されましたので処理を終了します。'
        return
    end
end
