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


# 解説にも書いてあったけれど、初めに不正な点数の条件をかいてやれば論理演算子初めの一回使うだけで済むので、よりシンプルに書ける。
# if score < 0 || score > 100
#     puts '不正な点数です'
#     # 点数の低い方から条件を指定してあげる。
# elsif score <= 59
#     puts '不可'
# elsif score <= 69
#     puts '可'
# elsif score <= 79
#     puts '良'
# else
#     puts '優'
# end