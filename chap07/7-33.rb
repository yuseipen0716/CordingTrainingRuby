# int型の1次元配列とint型の2次元配列(行によって列数が異なる可能性がある。)の全要素の値を表示する、多重定義されたメソッド群を作成せよ。
# printArray(a)
# なお、1次元配列の表示では、各要素の間には1文字分のスペースを空けること。また、2次元配列の表示では、各列の数値の先頭が揃うように最低限のスペースを開けること。

# 実行例
# 1次元配列xの要素数 : 4
# x[0] : 12
# x[1] : 536
# x[2] : -8
# x[3] : 7
# 2次元配列yの行数 : 3
# 0行目の列数 : 5
# 1行目の列数 : 3
# 2行目の列数 : 4
# 各要素の値を入力せよ。
# y[0][0] : 32
# y[0][1] : -1
# y[0][2] : 32
# y[0][3] : 45
# y[0][4] : 67
# y[1][0] : 535
# y[1][1] : 99999
# y[1][2] : 2
# y[2][0] : 2
# y[2][1] : 5
# y[2][2] : -123
# y[2][3] : 9

# 1次元配列x
# 12 536 -8 7

# 2次元配列y
# 32  -1    32   45 67
# 535 99999 2
# 2   5     -123 9

def printArray_1d(a)
    puts "\n1次元配列x"
    (0..a.size-1).each do |i|
        print "#{a[i]} "
    end
    puts "\n"
end

def printArray_2d(a)
    puts "\n2次元配列x"
    # 数値の桁数を格納する二次元配列配列widthを作成。二次元目の要素は後で初期化
    width = Array.new(a.size)
    # 後で定義する配列max_widthを初期化する際の引数で利用するための配列maxを用意。読み込んだ配列aの各行の列数を格納した配列になる。
    max = Array.new(a.size)
    (0..a.size-1).each do |i|
        max[i] = a[i].size
    end
    # 各列の桁数の最大値を格納する一次元配列max_widthを作成。要素数は配列maxの最大値とする。要素の初期値がnilだと、のちのち値を比較する際に困るため、0とした。
    # 最初ここをeach分の中で定義してしまっていたので期待通りの結果が得られず困った。繰り返すたびに初期化されるんだから、そりゃ期待通りには動きませんね。
    max_width = Array.new(max.max, 0)

    # 配列widthとmax_widthに要素を代入していく。
    (0..a.size-1).each do |i|
        # 配列widthの二次元目の要素を初期化。配列aの二次元目の要素数がバラバラなので、ここで初期化することにした。
        width[i] = Array.new(a[i].size)
        (0..a[i].size-1).each do |j|
            # widthに桁数を格納していく。桁数はa[i][j]の要素をStringに変換した文字数で表現。
            width[i][j] = a[i][j].to_s.size
            # widthの各要素の値をmax_widthの値と比較。widthの値がmax_widthを超える際にはmax_widthの値にwidthの値を代入。
            max_width[j] = width[i][j] if width[i][j] > max_width[j]
        end
    end

    # 数値の先端を揃えるために追加するスペースの数を格納する二次元配列add_spaceを作成
    add_space = Array.new(a.size)
    (0..a.size-1).each do |m|
        puts "\n" if m > 0
        add_space[m] = Array.new(a[m].size)
        (0..a[m].size-1).each do |n|
            # 配列add_spaceに各列の桁数の最大値からその列の桁数を引いた数値(数値の先端を揃えるために追加するスペース数)を代入
            add_space[m][n] = (max_width[n] - width[m][n])
            # スペースを追加して配列aの要素を横並びに表示。
            print "#{a[m][n]} #{' ' * add_space[m][n]}"
        end
    end
end

# ========1次元配列の処理==========
print "1次元配列xの要素数 : "
element = gets.chomp.to_i
x = Array.new(element)

(0..element-1).each do |i|
    print "x[#{i}] : "
    x[i] = gets.chomp.to_i
end
# ===============================

# ========2次元配列の処理==========
print "2次元配列yの行数 : "
row = gets.chomp.to_i
y = Array.new(row)
(0..row-1).each do |i|
    print "#{i}行目の列数 : "
    column = gets.chomp.to_i
    y[i] = Array.new(column)
end

puts '各要素の値を入力せよ。'

(0..row-1).each do |i|
    (0..y[i].size-1).each do |j|
        print "y[#{i}][#{j}] : "
        y[i][j] = gets.chomp.to_i
    end
end


# ===============================

printArray_1d(x)
printArray_2d(y)