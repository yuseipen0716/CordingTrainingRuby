# 「正の整数値 : 」と表示してキーボードから正の整数値を読み込んで、その値を返却するメソッドreadPlusIntを作成せよ。0や負の値が入力された場合には際入力させること。

# 実行例
# 正の整数値 : -125
# 正の整数値 : 0
# 正の整数値 : 521
# 逆から読むと125です。
# もう一度？＜Yes・・・1/No・・・0＞ : 0

def readPlusInt
    isContinue = 1
    # もう一度？で1が入力されたら繰り返し
    while isContinue == 1
        num = 0
        # 正の整数が入力されるまで、入力を求める
        until num.to_i > 0
            print "正の整数値 : "
            num = gets.chomp
        end
        # num(String)に対してsplitメソッドで一文字ずつ分解して、その配列に対してreverseしてからjoinでくっつけて逆順出力。
        num_reverse = num.split(//).reverse.join
        puts "逆から読むと#{num_reverse}です。"
        print "もう一度？＜Yes・・・1/No・・・0＞ : "
        isContinue = gets.chomp.to_i
        # 1でない値が入力された場合にはどのみちメソッド終了するので、以下は不要かもしれない。
        return if isContinue != 0 && isContinue != 1
    end
end

readPlusInt