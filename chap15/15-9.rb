# 浮動小数点数値xを、小数点以下の部分をp桁で、全体を少なくともw桁で表示するメソッドprint_double(x, p, w)を作成せよ。

# 実行例
# 実数値 : 3.1415926535
# 表示全桁数 : 9
# 少数部桁数 : 4
#    3.1416

# printf は与えられた引数を指定フォーマットの文字列として「出力する」 / sprintf は与えられた引数を指定フォーマットの文字列として「返す」
def print_double(x, p, w)
    # %%みたいに%を重ねると%を出力。正規表現で言うエスケープ文字みたいな感じだろうか。sprintf("%%%d.%df", w, p)でフォーマットを作る。xに対して、先ほど作成したフォーマットを指定して出力するようにしている
    printf(sprintf("%%%d.%df", w, p), x)
end
# puts を使って表示する時はこんな感じでもできる?
# def print_double(x, p, w)
#     puts sprintf(sprintf("%%%d.%df", w, p), x)
# end

print "実数値 : "
x = gets.chomp.to_f

print "表示全桁数 : "
w = gets.chomp.to_i

print "少数部桁数 : "
p = gets.chomp.to_i

print_double(x, p, w)