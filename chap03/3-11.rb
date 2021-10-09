# キーボードから読み込んだ点数に応じて、優/良/可/不可を判定して表示するプログラムを作成せよ。判定は以下のように行うこと。
# 0-59→不可 / 60-69→可 / 70-79→良 / 80-100→優

# 実行例1
# 点数: 68
# 可

# 実行例2
# 点数: 102
# 不正な点数です。

# 点数を読み込む。
print "点数: "
score = gets.chomp.to_i

if score >= 80 && score <= 100
    puts '優'
elsif score >= 70 && score < 80
    puts '良'
elsif score >= 60 && score < 70
    puts '可'
elsif score >= 0 && score < 60
    puts '不可'
else
    puts '不正な点数です'
end
