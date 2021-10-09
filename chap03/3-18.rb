# 二つの整数値を読み込んで降順（大きい順）にソートするプログラムを作成せよ。

# 実行例
# 変数a: 13
# 変数b: 57
# a >= b となるようにソートしました。
# 変数aは57です。
# 変数bは13です。

print "変数a: "
num_a = gets.chomp.to_i
print "変数b: "
num_b = gets.chomp.to_i

# ソートする必要があるのは変数aが変数bより小さい時のみ。if文の中の条件は一つにして、if文の外でソートした結果を出力する時は共通の変数num_a,num_bを使用したい。
if num_a < num_b
    # このときにaとbを入れ替えてあげればいいのだが、a = b ,b = aとすると、元々num_aに入っていた数値は読み込めなくなってしまう。元あったnum_aの置き場として変数bigを定義。
    big = num_a
    num_a = num_b
    num_b = big
end
puts 'a≧bとなるようにソートしました。'
puts "変数aは#{num_a}です。"
puts "変数bは#{num_b}です。"