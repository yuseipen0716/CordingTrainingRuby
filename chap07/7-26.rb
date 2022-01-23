# 配列aの要素a[idx]にxを挿入した配列を返却するメソッドarrayInsOf(a, idx, x)を作成せよ。挿入に伴ってa[idx]以降の全要素を一つ後方にずらすこと。

# 実行例
# 要素数 : 6
# x[0] : 1
# x[1] : 3
# x[2] : 4
# x[3] : 7
# x[4] : 9
# x[5] : 11
# 挿入する要素のインデックス : 2
# 挿入する値 : 99
# y[0] : 1
# y[1] : 3
# y[2] : 99
# y[3] : 4
# y[4] : 7
# y[5] : 9
# y[6] : 11

def arrayInsOf(a, idx, x)
    if idx < 0 || idx > a.size
        puts '不正な値です'
        return
    end
    # まず、要素を挿入するとその分だけ要素が増えるので、新しく渡す配列yはa.size個の要素で初期化。
    y = Array.new(a.size)
    # 一旦、配列aの要素をyにコピー（y[6]はnil）
    (0..a.size).each do |i|
        y[i] = a[i]
    end
    # 要素を挿入するインデックスより後ろの要素は一つずつ後方にずらす。
    (idx+1..y.size-1).to_a.reverse.each do |j|
        y[j] = y[j-1]
    end
    # 挿入したい要素を指定されたインデックスに挿入。
    y[idx] = x
    (0..y.size-1).each do |k|
        puts "y[#{k}] : #{y[k]}"
    end
end

print "要素数 : "
element = gets.chomp.to_i

x = []
(0..element-1).each do |i|
    print "x[#{i}] : "
    x << gets.chomp.to_i
end

print "挿入する要素のインデックス : "
insert_index = gets.chomp.to_i

print "挿入する値 : "
insert_num = gets.chomp.to_i

arrayInsOf(x, insert_index, insert_num)



