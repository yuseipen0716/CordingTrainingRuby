# String型の配列に格納されている全文字列を表示するメソッドを作成せよ。文字列の表示は、charAtメソッドによって1文字ずつ走査しながら行うこと。また、各文字列を表示する度に改行文字を出力すること。

# 実行例
# 文字列の個数 : 3
# sx[0] = Turbo
# sx[1] = NA
# sx[2] = DOHC
# Turbo
# NA
# DOHC

def print_string_array(a)
    (0..a.size-1).each do |i|
        # String#charsメソッドを使用して、文字列を1文字ずつ走査して出力。a[i]の要素にcharsメソッドを使用して、1文字ずつ分解された配列とする。
        a[i] = a[i].chars
        (0..a[i].size-1).each do |j|
            # 配列の各要素（つまり、入力された文字列の1文字ずつ）を改行文字をつけずに出力。一つの文字列を出力し切ったところで改行文字を入れて、次の文字列をまた表示してあげる。
            print "#{a[i][j]}"
            puts "\n" if j == a[i].size-1
        end
    end
end

print "文字列の個数 : "
element = gets.chomp.to_i
# 入力された数の要素をもつ配列sxを作成
sx = Array.new(element)
(0..element-1).each do |i|
    # 配列sxの各要素に入力された文字列を代入していく。
    print "sx[#{i}] = "
    sx[i] = gets.chomp
end

print_string_array(sx)