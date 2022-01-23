# 整数を左右にシフトした値が、2のべき乗での乗算や除算と等しくなることを確認するプログラムを作成せよ。

# 実行例
# 整数xをnビットシフトします。
# x : 100
# n : 3
# [a] x × (2の3乗) = 800
# [b] x ÷ (2の3乗) = 12
# [c] x << 3 = 800
# [d] x >> 3 = 12
# [a]と[c]の値は一致します。
# [b]と[d]の値は一致します。

def shift_operate
    puts '整数xをnビットシフトします。'
    print "x : "
    x = gets.chomp.to_i
    print "n : "
    n = gets.chomp.to_i
    # [a]〜[d]それぞれの計算結果は変数に代入しておく。
    a = x * (2 ** n)
    puts "[a] x × (2の#{n}乗) = #{a}"
    b = x / (2 ** n)
    puts "[b] x ÷ (2の#{n}乗) = #{b}"
    c = x << n
    puts "[c] x << #{n} = #{c}"
    d = x >> n
    puts "[d] x >> #{n} = #{d}"
    # aとc, bとdそれぞれが一致するかを評価
    if a == c
        puts '[a]と[c]の値は一致します。'
    end
    if b == d
        puts '[b]と[d]の値は一致します。'
    end
end

shift_operate