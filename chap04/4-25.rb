# 正の整数値を読み込み、それが素数であるかどうかを判定するプログラムを作成せよ。素数とは、2以上n未満のいずれの数でも割り切ることのできない整数nのことである。

# 実行例
# 2以上の整数値: 13
# それは素数です。

# 2以上の整数値: 14
# それは素数ではありません。


# とりあえず、何もみずに仮実装してみる
# 処理の流れとしては、まず入力された2以上の整数値を変数two_or_moreに格納/ two_or_moreをiで繰り返し割るeach文を書く/ 
# each文の前にcounterを設置しておいて、繰り返し処理で行われる除算で割り切れた場合にはcounterに1加算
# 繰り返し処理の最後はtwo_or_more / two_or_more( = i)となり割り切れるため、最終的にはcounter >= 1となる。
# つまり、入力された値が素数であればcounter == 1となり、counter > 1となるときは素数でないと判断。
# また、入力された値が2未満の場合には21行目のto_aするところで弾かれる（はず。）

print "2以上の整数値: "
two_or_more = gets.chomp.to_i

# counter = 0
# (2..two_or_more).to_a.each do |i|
#     div = two_or_more % i 
#     if div == 0
#         counter += 1
#     end
# end

# if counter == 1
#     puts 'それは素数です。'
# else
#     puts 'それは素数ではありません。'
# end


# 解説をみたらbreakを使って、割り切れた時点で繰り返し処理を離脱するようにしていた！！入力された値がとても大きい場合には全部を繰り返し除算する自分書いたプログラムはよろしくないですね。

(2..two_or_more).each do |i|
    div = two_or_more % i 
    if i != two_or_more && div == 0
        puts 'それは素数ではありません。'
        break
    end
    puts 'それは素数です。' if i == two_or_more
end

# breakを使って書いてみると↑こんな感じでしょうか。