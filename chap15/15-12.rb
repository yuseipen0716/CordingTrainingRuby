# プログラム起動時にコマンドラインで与えられた文字列(コマンドライン引数)を表示するプログラムを作成せよ。

# 実行例
# CordingTrainingRuby % ruby chap15/15-12.rb Turbo Na DOHC
# args[0] = Turbo
# args[1] = Na
# args[2] = DOHC


(0..ARGV.size-1).each do |i|
    puts "args[#{i}] = #{ARGV[i]}"
end


# ARGV Rubyスクリプトに与えられた引数を表す配列 実行例のようにコンソールでプログラムを実行する際に引数を渡している。