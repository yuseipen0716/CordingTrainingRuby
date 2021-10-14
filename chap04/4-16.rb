# 身長と標準体重の対応表を表示するプログラムを作成せよ。表示する身長の範囲（開始値/終了値/増分）は、整数値として読み込むこと。
# ※標準体重は（身長-100)*0.9によって求められる。

# 実行例
# 何cmから: 150
# 何cmまで: 180
# 何cmごと: 5
# 身長  標準体重
# ------------
# 150  45.0
# 155  49.5
# 160  54.0
# 165  58.5
# 170  63.0
# 175  67.5
# 180  72.0

print "何cmから: "
height_first = gets.chomp.to_i
print "何cmまで: "
height_last = gets.chomp.to_i

print "何cmごと: "
increment = gets.chomp.to_i

puts '身長  標準体重'
puts '------------'

# stepメソッドで初期値height_firstから上限height_lastまでincrementずつ増加する値を表示。それに加えて標準体重（計算式は上記参照）を出力。
height_first.step(height_last, increment) { |i| puts i.to_s + "  "+ "#{(i - 100) * 0.9}"}