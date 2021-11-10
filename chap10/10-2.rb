# 前問のクラスHumanの識別番号に関連する部分のみを抽出した連番クラスIdを作成せよ。

# 実行結果
# aの識別番号 : 1
# bの識別番号 : 2
# Id.counter = 2
# a.counter = 2
# b.counter = 2

class Id
    @@id = 0
    def initialize
        @@id += 1
        @id = @@id
    end

    def get_id
        @id
    end
    # 実行結果Id.couterを得るためにクラスメソッドを定義
    def self.counter
        @@id
    end
    # 実行結果a.counter, b.counterを得るためにインスタンスメソッドを定義
    def counter
        @@id
    end
end

a = Id.new
b = Id.new

puts "aの識別番号 : #{a.get_id}"
puts "bの識別番号 : #{b.get_id}"

puts "Id.counter = #{Id.counter}"
puts "a.counter = #{a.counter}"
puts "b.counter = #{b.counter}"
