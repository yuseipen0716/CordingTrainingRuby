# 球の表面積と体積を求めるプログラムを作成せよ

# 実行例
# 球の表面積と体積を求めます。
# 半径: 12.5
# 表面積は1963.4999999999998です。
# 体積は8181.249999999998です。

# 表面積 = 4\pi\r^2
# 体積 = 4/3\pi\r^3

# 入力する数値は実数前提で実装

puts '球の表面積と体積を求めます。'
print "半径: "
radius = gets.chomp.to_f

area_sphere = 4 * Math::PI * radius ** 2
volume_sphere = 4 * Math::PI * radius ** 3 / 3

puts "表面積は#{area_sphere}です。"
puts "体積は#{volume_sphere}です。"