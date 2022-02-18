# 自動車クラスExCar型のインスタンスを作り、メソッドputSpec(show_spec)を呼び出してスペックを表示するプログラムを作成せよ。

require './chap09/Day'
require './chap12/12-1'

my_car = ExCar.new("W221", 1845, 1490, 5205, 0.0, 0.0, 90.0, Day_YMD.new(2015, 12, 24))

my_car.show_spec