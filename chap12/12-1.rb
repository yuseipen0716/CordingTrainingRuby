# 以下に示す自動車クラスCarに対して、総走行距離を表すフィールドと、その値を調べるメソッドを追加した自動車クラスExCarを作成せよ。クラスCarから派生すること。
require 'date'
class Car
    attr_reader :name, :width, :height, :length, :x, :y, :fuel, :purchase_day
    def initialize(name, width, height, length, x, y, fuel, purchase_day)
        @name = name
        @width = width
        @height = height
        @length = length
        @x = x
        @y = y
        @fuel = fuel
        @purchase_day = purchase_day
    end

    def get_x
        x
    end

    def get_y
        y
    end

    def remaining_fuel
        fuel
    end

    def show_spec
        puts "名前 : #{name}"
        puts "車幅 : #{width} mm"
        puts "車高 : #{height} mm"
        puts "車長 : #{length} mm"
    end

    def move(dx, dy)
        # 移動距離を算出
        distance = Math.sqrt((dx ** 2) + (dy ** 2))

        # distance走るだけのガソリンが残っているのか評価。燃費は1とみなす。
        if distance > fuel
            puts '燃料が足りません。'
            return
        else # ガソリンが足りるなら以下のような処理を。
            @x += dx
            @y += dy
            @fuel -= distance
        end
    end
end

class ExCar < Car
    def initialize(name, width, height, length, x, y, fuel, purchase_day)
        @name = name
        @width = width
        @height = height
        @length = length
        @x = x
        @y = y
        @fuel = fuel
        @purchase_day = purchase_day
        @total_mileage = 0.0
    end

    def get_total_mileage
        @total_mileage
    end

    def show_spec
        puts "名前 : #{@name}"
        puts "車幅 : #{@width} mm"
        puts "車高 : #{@height} mm"
        puts "車長 : #{@length} mm"
        puts "総走行距離 : #{self.get_total_mileage} km"
    end

    def move(dx, dy)
        # 移動距離を算出
        distance = Math.sqrt((dx ** 2) + (dy ** 2))

        # distance走るだけのガソリンが残っているのか評価。燃費は1とみなす。
        if distance > fuel
            puts '燃料が足りません。'
            return
        else # ガソリンが足りるなら以下のような処理を。
            @x += dx
            @y += dy
            @fuel -= distance
            # 総走行距離にdistanceをたす。
            @total_mileage += distance
        end
    end
end

# 動作テスト
car1 = ExCar.new('ビッツ', 1660, 1500, 3640, 0, 0, 30.0, Date.today)

car1.show_spec
car1.move(3.0, 4.0)
car1.show_spec