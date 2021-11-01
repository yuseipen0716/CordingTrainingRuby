# 前ページに示した問題点を解決するように、クラスHumanを改良せよ。クラスには、フィールドだけでなく、コンストラクタとメソッドを定義すること。

# 実行結果
# 名前 : 鈴木二郎
# 身長 : 170cm
# 体重 : 63kg

# 名前 : 高田龍一
# 身長 : 166cm
# 体重 : 67kg

class Human
    attr_reader :name, :height, :weight
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end
    
    def gainWeight(w)
        @weight = weight + w
    end

    def reduceWeight(w)
        @weight = weight - w
    end
end

human1 = Human.new('鈴木二郎', 170, 60)
human2 = Human.new('高田龍一', 166, 72)

# 鈴木君が3kg太る
human1.gainWeight(3)
# 高田くんが5kg痩せる
human2.reduceWeight(5)

puts "名前 : #{human1.name}"
puts "身長 : #{human1.height}cm"
puts "体重 : #{human1.weight}kg"

puts "\n"

puts "名前 : #{human2.name}"
puts "身長 : #{human2.height}cm"
puts "体重 : #{human2.weight}kg"