# 正の整数値を読み込んで、その桁数を出力するプログラムを作成せよ

# 実行例
# 正の整数値の桁数を求めます。
# 正の整数値: 1234
# その数は4桁です。

puts '正の整数値の桁数を求めます。'
print "正の整数値: "
num = gets.chomp

if num.to_i > 0
    puts "その数は#{num.size}桁です。"
else
    puts '正の整数を入力してください。'
end
