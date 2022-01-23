# 前問で作成した自動車クラスCarを利用するプログラムを作成せよ。（その1)自動車クラスを利用
# 実行例
# 名前 : ビッツ
# ナンバー : 福岡999ん99-99
# 車幅 : 1660 mm
# 車高 : 1500 mm
# 車長 : 3640 mm
# タンク : 40.0 リットル
# 燃費 : 12.0 km/リットル

# 名前 : マーチ
# ナンバー : 福岡999ん99-98
# 車幅 : 1660 mm
# 車高 : 1525 mm
# 車長 : 3695 mm
# タンク : 41.0 リットル
# 燃費 : 12.0 km/リットル

require './chap08/8-3.rb'

car1 = Car.new('ビッツ', '福岡999ん99-99', 1660, 1500, 3640, 0, 0, 40.0, 30.0, 12.0)
car1.show_spec

puts "\n"

car2 = Car.new('マーチ', '福岡999ん99-98', 1660, 1525, 3695, 0, 0, 41.0, 30.0, 12.0)
car2.show_spec



# (その2)対話的に自動車を移動

def move_test
    puts '車のデータを入力せよ。'
    print "名前 : "
    name = gets.chomp
    print "ナンバー : "
    number = gets.chomp
    print "車幅 : "
    width = gets.chomp.to_i
    print "高さ : "
    height = gets.chomp.to_i
    print "長さ : "
    length = gets.chomp.to_i
    print "タンク容量 : "
    tankage = gets.chomp.to_f
    print "ガソリン量 : "
    fuel = gets.chomp.to_f
    print "燃費 : "
    sfc = gets.chomp.to_f

    car_test = Car.new(name, number, width, height, length, 0, 0, tankage, fuel, sfc)
    # puts '現在地 : (0.00, 0.00)'
    # puts "残り燃料 : #{car_test.remaining_fuel}"
    # print "移動しますか[0・・・No/1・・・Yes] : "
    # switch = gets.chomp.to_i
    # if switch == 0
    #     return
    # elsif switch != 0 && switch != 1
    #     puts '不正な値が入力されました。'
    #     return
    # else
    # end
    # # 1を入力されている間は繰り返し
    # while switch == 1
    #     print "X方向の移動距離 : "
    #     dx = gets.chomp.to_f
    #     print "Y方向の移動距離 : "
    #     dy = gets.chomp.to_f
    #     car_test.move(dx, dy)

    #     puts "現在地 : (#{car_test.get_x}, #{car_test.get_y})"
    #     puts "残り燃料 : #{car_test.remaining_fuel}"

    #     print "移動しますか[0・・・No/1・・・Yes] : "
    #     switch = gets.chomp.to_i
    #     if switch == 0
    #         return
    #     elsif switch != 0 && switch != 1
    #         puts '不正な値が入力されました。'
    #         return
    #     else
    #     end
    # end
    while true
        puts "現在地 : (#{car_test.get_x}, #{car_test.get_y})"
        puts "残り燃料 : #{car_test.remaining_fuel}"
    
        print "移動しますか[0・・・No/1・・・Yes] : "
        switch = gets.chomp.to_i
        break if switch == 0
        break if switch != 0 && switch != 1
        
        print "X方向の移動距離 : "
        dx = gets.chomp.to_f
        print "Y方向の移動距離 : "
        dy = gets.chomp.to_f
        car_test.move(dx, dy)
    end
end
move_test


# レビューいただいた。while true以下のように記述すればだいぶシンプルに。
# while trueの部分はRubyの真偽値において、「nilまたはfalse以外は真とする」という性質を利用して、switchが0または0でも1でもなくてbreakする時以外は内部の処理を繰り返す、という理解で良いのだろうか。