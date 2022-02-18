# 自動車クラスExCar型のインスタンスを作り、現在位置と残り燃料と購入日を表示するプログラムを作成せよ。

# 実行例
# 現在位置 : (0.0, 0.0)
# 残り燃料 : 90.0リットル
# 購 入 日 : 2015年12月24日(木)

require './chap09/Day'
require './chap12/12-1'

my_car = ExCar.new("W221", 1845, 1490, 5205, 0.0, 0.0, 90.0, Day_YMD.new(2015, 12, 24))

puts "現在位置 : (#{my_car.get_x}, #{my_car.get_y})"
puts "残り燃料 : #{my_car.remaining_fuel}リットル"
puts "購 入 日 : #{my_car.purchase_day.show}"