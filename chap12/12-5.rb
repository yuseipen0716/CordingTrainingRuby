# サブクラスである自動車クラスExCar型のインスタンスを参照しているCar型のクラス型変数に対して、メソッドputSpec(show_spec)を呼び出した時の挙動を、プログラムを作成して確認せよ。

# 実行例
# 名前 : W221
# 車幅 : 1845 mm
# 車高 : 1490 mm
# 車長 : 5205 mm

# 名前 : W221
# 車幅 : 1845 mm
# 車高 : 1490 mm
# 車長 : 5205 mm
# 総走行距離 : 0.0 km

require './chap09/Day'
require './chap12/12-1'

# Rubyではクラス型を明示できず、解説のような動作はできないかもしれなかったので、以下のように同様の引数を渡してクラスを分けて初期化して動作確認をした。

car1 = Car.new("W221", 1845, 1490, 5205, 0.0, 0.0, 90.0, Day_YMD.new(2015, 12, 24))

car2 = ExCar.new("W221", 1845, 1490, 5205, 0.0, 0.0, 90.0, Day_YMD.new(2015, 12, 24))

car1 = car2

car1.show_spec
puts "\n"
car2.show_spec