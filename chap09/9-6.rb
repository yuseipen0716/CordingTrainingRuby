# 問題8-2で作成した<人間クラス>に、誕生日のフィールドとtoStringメソッドを追加せよ。
require './chap09/Day'

class Human
    def initialize(name, height, weight, birthday)
        @name = name
        @height = height
        @weight = weight
        @birthday = birthday
    end
    # 以下4つは名前、身長、体重、誕生日を取得するインスタンスメソッド
    def get_name
        @name
    end
    def get_height
        @height
    end
    def get_weight
        @weight
    end
    def get_birthday
        @birthday.show
    end
    
    # def gainWeight(w)
    #     @weight = weight + w
    # end

    # def reduceWeight(w)
    #     @weight = weight - w
    # end
    # 文字列化のためのインスタンスメソッド
    def to_string
        to_st =  "{#{self.get_name}: #{self.get_height}cm #{self.get_weight}kg #{self.get_birthday}生まれ}"
    end
end

# birthdayのところはDay_YMDクラスのインスタンスを生成する形で。
suzuki = Human.new("鈴木二郎", 170, 60, Day_YMD.new(1975, 3, 12))
takada = Human.new("高田龍一", 166, 72, Day_YMD.new(1987, 10, 7))

puts "suzuki = #{suzuki.to_string}"
puts "takada = #{takada.to_string}"