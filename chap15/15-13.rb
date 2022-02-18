# コマンドライン引数で与えられた半径をもつ円の円周の長さと面積を求めて表示するプログラムを作成せよ。

# 実行例
# CordingTrainingRuby % ruby chap15/15-13.rb 5.50
# 半径5.50の円周は34.56で、面積は95.03です。

# 以下のputs~~の記述1行でかけるけど、ちょっとスッキリ見せるためにコマンドライン引数を実数化したものを変数に代入、円周と面積についても変数を定義した。
r = ARGV[0].to_f
circumference = 2 * Math::PI * r
area_of_circle = Math::PI * r ** 2

puts "半径#{ARGV[0]}の円周は#{circumference.round(2)}で面積は#{area_of_circle.round(2)}です。"
