# 二つの変数a,bに値を読み込んで、その代償関係を以下のいずれかで表示するプログラムを作成せよ。
# 「aのほうが大きいです。」「bのほうが大きいです。」「aとbは同じ値です。」

# 実行例
# 変数a: 12
# 変数b: 3
# aのほうが大きいです。

print "変数a: "
number_a = gets.chomp.to_f
print "変数b: "
number_b = gets.chomp.to_f

if number_a > number_b
    puts 'aのほうが大きいです。'
elsif number_a < number_b
    puts 'bのほうが大きいです。'
else
    puts 'aとbは同じ値です。'
end
