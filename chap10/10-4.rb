# 前問で作成したクラスIdを、以下のように変更したクラスExIdを作成せよ。
# インスタンスを生成する度に識別番号をnずつ増やして与える(nは正の整数)。nの値は、指定されない限り1とするが、メソッドを通じて取得・変更できるようにする。
# 実行例
# aの識別番号 : 1
# bの識別番号 : 2
# cの識別番号 : 3
# dの識別番号 : 7
# eの識別番号 : 11
# fの識別番号 : 15
# 最後に与えた識別番号 : 15
# 次に与える識別番号 : 19

class ExId
    @@id = 0
    # 増分の初期値は1
    @@step = 1
    def initialize
        # idを増分だけ増やす。（つまり、初期の状態ではインスタンスを生成する度に1ずつ増やす。）
        @@id += @@step
        @id = @@id
    end

    def get_id
        @id
    end
    # 増分を取得するクラスメソッド
    def self.get_step
        @@step
    end
    # 増分を変更するクラスメソッド
    def self.set_step(s)
        @@step = s
    end
    # 最後に与えた識別番号を返を得るためにクラスメソッドを定義
    def self.get_max_id
        @@id
    end
end

a = ExId.new
b = ExId.new
c = ExId.new
ExId.set_step(4)
d = ExId.new
e = ExId.new
f = ExId.new


puts "aの識別番号 : #{a.get_id}"
puts "bの識別番号 : #{b.get_id}"
puts "cの識別番号 : #{c.get_id}"
puts "dの識別番号 : #{d.get_id}"
puts "eの識別番号 : #{e.get_id}"
puts "fの識別番号 : #{f.get_id}"

puts "最後に与えた識別番号 : #{ExId.get_max_id}"
puts "次に与える識別番号 : #{ExId.get_max_id + ExId.get_step}"