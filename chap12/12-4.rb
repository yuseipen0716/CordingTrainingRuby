# スーパークラスであるCar型のクラス型変数が、サブクラスである自動車クラスExCar型のインスタンスを参照できることをプログラムを作成して確認せよ。

# 実行例
# xの購入日 : 2015年12月24日(木)
# yの購入日 : 2015年12月24日(木)
# yの総走行距離 : 0.0

require './chap09/Day'
require './chap12/12-1'

car1 = Car.new("W140", 1885, 1490, 5220, 0.0, 0.0, 95.0, Day_YMD.new(2018, 10, 13))

car2 = ExCar.new("W221", 1845, 1490, 5205, 0.0, 0.0, 90.0, Day_YMD.new(2015, 12, 24))

# Javaのように明示的に型を宣言しないので若干動作が異なる
x = car1
x = car2

puts "xの購入日 : #{x.purchase_day.show}"

y = car1
y = car2

puts "yの購入日 : #{y.purchase_day.show}"
puts "yの総走行距離 : #{y.get_total_mileage}"