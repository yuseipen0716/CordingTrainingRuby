# 配列の要素数と、個々の要素の値を読み込んで、各要素の値を表示するプログラムを作成せよ。
# 表示の形式は、初期化子と同じ形式、すなわち、書く要素の値をコンマで区切って{}で囲んだ形式とする。

# 実行例
# 要素数: 3
# a[0] = 5
# a[1] = 7
# a[2] = 8
# a = {5, 7, 8}

print "要素数: "
limit = gets.chomp.to_i

a = []
(1..limit).each do |i|
    print "a[#{i-1}] = "
    a << gets.chomp.to_i
end

print 'a = {'
(1..limit).each do |j|
    if j != limit
        print  "#{a[j-1]}, "
    else
        print "#{a[j-1]}"
    end
end
print  '}'
