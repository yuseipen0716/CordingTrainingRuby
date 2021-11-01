# 名前・身長・体重などをメンバとしてもつ人間クラスを作成せよ。フィールドは自分で自由に設計すること。

# 実行結果
# 名前 : 鈴木二郎
# 身長 : 170cm
# 体重 : 60kg

# 名前 : 高田龍一
# 身長 : 166cm
# 体重 : 72kg

class Human
    attr_accessor :name, :height, :weight
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end
end

human1 = Human.new('鈴木二郎', 170, 60)
human2 = Human.new('高田龍一', 166, 72)

puts "名前 : #{human1.name}"
puts "身長 : #{human1.height}cm"
puts "体重 : #{human1.weight}kg"

puts "\n"

puts "名前 : #{human2.name}"
puts "身長 : #{human2.height}cm"
puts "体重 : #{human2.weight}kg"
