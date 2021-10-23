# 受け取ったint型引数の値nが負であれば、-1を返し、0であれば0を返却し、正であれば1を返却するメソッドsignOfを作成せよ

# 実行例
# 整数x : 13
# signOf(x)は1です

# 入力される引数は整数である前提で実装

def signOf(n)
    if n > 0
        puts 'signOf(x)は1です'
    elsif n == 0 
        puts 'signOf(x)は0です'
    else
        puts 'signOf(x)は-1です'
    end
end

print "整数x : "
n = gets.chomp.to_i

signOf(n)