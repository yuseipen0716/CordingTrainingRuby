# 個々のインスタンスに識別番号を与えるように、問題8-2で作成した人間クラスHumanを改良せよ。インスタンス生成のたびに、1, 2, ・・・という連続した値を与えること。

# 実行例
# 名前 : 鈴木二郎
# 身長 : 170cm
# 体重 : 60kg
# 番号 : 1

# 名前 : 高田龍一
# 身長 : 166cm
# 体重 : 72kg
# 番号 : 2

class Human
    # クラス変数@@idを初期値0で定義。
    @@id = 0
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
        # initializeするたびにクラス変数の@@idを一つずつ増やす。新しく更新されたクラス変数をインスタンス変数@idに代入しておく。
        @@id += 1
        @id = @@id
    end
    # 以下4つは名前、身長、体重、番号を取得するインスタンスメソッド
    def get_name
        @name
    end
    def get_height
        @height
    end
    def get_weight
        @weight
    end
    def get_id
        @id
    end
    # def gainWeight(w)
    #     @weight = weight + w
    # end

    # def reduceWeight(w)
    #     @weight = weight - w
    # end

    #====== データ表示 =======
    def put_data
        puts "名前 : #{self.get_name}"
        puts "身長 : #{self.get_height}cm"
        puts "体重 : #{self.get_weight}kg"
        puts "番号 : #{self.get_id}"
    end
end

suzuki = Human.new('鈴木二郎', 170, 60)

takada = Human.new('高田龍一', 166, 72)

suzuki.put_data
puts "\n"
takada.put_data