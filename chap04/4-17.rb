# 読み込んだ個数だけ＊を表示する問題4-11を書き換えて、5個表示するごとに改行するプログラムを作成せよ。

# 実行例
# 何個*を表示しますか: 12
# *****
# *****
# **

# 処理の流れ
# 何個表示しますか？の部分で表示回数(counter)を取得し、その回数だけ＊を表示
# 横並びになった*をsplitメソッドで分割、空文字を削除してからjoinメソッドで改行文字を加えて連結

print "何個*を表示しますか: "
counter = gets.chomp.to_i

# 正の整数値が入力された場合のみ実行
if counter > 0
    # 入力された数値分、＊を繰り返し。それを変数repeat_by_counterに格納（String)
    repeat_by_counter = '*' * counter
    # ＊５文字ごと分割。delete_ifで配列内の空文字を削除。joinで改行文字をつけて連結してputs
    puts repeat_by_counter.split(/(\*{5})/).delete_if(&:empty?).join("\n")
end

