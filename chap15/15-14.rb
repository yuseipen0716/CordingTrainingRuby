# コマンドライン引数で与えられた実数値をすべて合計した値を表示するプログラムを作成せよ。拡張for文を用いて実現（Rubyでいうeach?）

# 実行例
# CordingTrainingRuby % ruby chap15/15-14.rb 5.5 3.75 2.25
# 合計は11.5です。

sum = 0
(0..ARGV.size-1).each do |i|
    # 結構ARGV[i]のto_fを忘れて、Stringのまま出力してしまい、errorが出てしまう。注意。
    sum += ARGV[i].to_f
end

puts "合計は#{sum}です。"
