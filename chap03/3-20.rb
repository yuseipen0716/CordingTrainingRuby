# 0,1,2のいずれかの値の乱数を生成し、0であれば”グー”を、1であれば”チョキ”を、2であれば”パー”を表示するプログラムを作成せよ。
# 実行例
# コンピュータが生成した手: チョキ

#0,1,2のいずれかの値の乱数を生成
random_number = rand(0..2)

if random_number == 0
    hand = 'グー'
elsif random_number == 1
    hand = 'チョキ'
else
    hand = 'パー'
end

puts "コンピュータの生成した手: #{hand}"

# これくらいの条件分岐だったらいいかもしれないけど、もっと条件がおおくなるのであればcase文を使用した方がよいかも

# case random_number
# when 0
#     hand ='グー'
# when 1
#     hand ='チョキ'
# when 2
#     hand ='パー'
# end

# puts "コンピュータの生成した手: #{hand}"