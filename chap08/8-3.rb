# 自動車クラスCarを作成せよ。
# 名前・ナンバー（以上String）/幅・高さ・長さ（以上int）/現在位置X座標・Y座標・タンク容量・残り燃料・燃費（以上double）をフィールドとして持たせ、
# 現在位置X座標を取得する・Y座標を取得する・残り燃料を取得する・スペックを表示する・指示されたX方向の移動距離とY方向の移動距離に基づいて自動車を移動
# する・給油を行うメソッドを持たせること。コンストラクタによる生成時にはX座標とY座標はともに0とし、それ以外のフィールドには引数に与えられた値を設定すること。

class Car
    attr_reader :name, :number, :width, :height, :length, :x, :y, :tankage, :fuel, :sfc
    def initialize(name, number, width, height, length, x, y, tankage, fuel, sfc)
        @name = name
        @number = number
        @width = width
        @height = height
        @length = length
        @x = x
        @y = y
        @tankage = tankage
        @fuel = fuel
        @sfc = sfc
    end

    def get_x
        puts x
    end

    def get_y
        puts y
    end

    def remaining_fuel
        puts fuel
    end

    def show_spec
        puts "名前 : #{name}"
        puts "ナンバー : #{number}"
        puts "車幅 : #{width} mm"
        puts "車高 : #{height} mm"
        puts "車長 : #{length} mm"
        puts "タンク : #{tankage} リットル"
        puts "燃費 : #{sfc} km/リットル"
    end

    def move(dx, dy)
        # 移動距離を算出
        distance = Math.sqrt((dx ** 2) + (dy ** 2))
        # distance移動するの消費するガソリン量を算出
        expenditure_fuel = distance / sfc

        # distance走るだけのガソリンが残っているのか評価。
        if expenditure_fuel > fuel
            puts '燃料が足りません。'
            return
        else # ガソリンが足りるなら以下のような処理を。
            @x = @x + dx
            @y = @y + dy
            @fuel = @fuel - expenditure_fuel
        end
    end

    def refuel(amount)
        if @fuel + amount > @tankage
            # タンク容量を超えた給油をしようとするときはガソリン満タンに。
            @fuel = @tankage
        else
            @fuel = @fuel + amount
        end
    end
end

# 以下動作テスト用
# car1 = Car.new('ビッツ', '福岡999ん99-99', 1660, 1500, 3640, 0, 0, 40.0, 30.0, 12.0)

# car1.show_spec
# car1.get_x
# car1.get_y
# car1.remaining_fuel
# car1.move(3, 4)
# car1.get_x
# car1.get_y
# car1.fuel
# car1.refuel(5.0)
# car1.remaining_fuel