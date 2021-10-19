# 異なる要素が同じ値をもつことのないように、6-10のプログラムを改良したプログラムを作成せよ。（配列の要素は10個以下であるとする。）

# 実行例
# 要素数 : 7
# a[0] = 2
# a[1] = 5
# a[2] = 1
# a[3] = 3 
# a[4] = 9
# a[5] = 5 →こうならないように
# a[6] = 6 

print "要素数 : "
element = gets.chomp.to_i

if element <= 10
    # 乱数を配列aに格納（まず、配列の最初の要素だけ設定）
    a = []
    a << rand(1..10)
    puts "a[#{0}] = #{a[0]}"
    # 配列の2つ目の要素以降はここで繰り返し処理
    (1..element-1).each do |i|
        random = rand(1..10)
        # 22行目でrandomという変数を1〜10の乱数で初期化。selectメソッドを利用して配列の中に同じ要素が入っていないかを評価して、同じ要素が入っている場合はuntil以降の繰り返しへ。
        # 配列に同じ数値が入っていなければ(selectメソッドの戻り値が空の配列[]となる場合）、if文は抜けて a << randomへ
        if a.select { |num| num == random } != []
            until a.select { |num| num == random } == []
                random = rand(1..10)
            end
        end
        a << random
        puts "a[#{i}] = #{a[i]}"
    end
else
    puts '要素数は10以下の正の整数で入力してください。'
end
