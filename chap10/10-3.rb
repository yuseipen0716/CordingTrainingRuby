# 前問の連番クラスIdに、最後に与えた識別番号を返すクラスメソッドgetMaxIdを追加せよ。なお、このメソッドは、インスタンスをn個生成した時点で呼びだすと、nを返すことになる。

# 前問で書いたものが、ほぼほぼ今回のやりたいことを実装していたみたい。

# 実行例
# aの識別番号 : 1
# bの識別番号 : 2
# 最後に与えた識別番号 : 2
# 最後に与えた識別番号 : 2
# 最後に与えた識別番号 : 2

class Id
    @@id = 0
    def initialize
        @@id += 1
        @id = @@id
    end

    def get_id
        @id
    end
    # 最後に与えた識別番号を返を得るためにクラスメソッドを定義
    def self.get_max_id
        @@id
    end
    # 実行例のようにインスタンス.クラスメソッドの形では呼び出せず、エラーが出るので、実行結果a.counter, b.counterを得るためにインスタンスメソッドを定義
    def get_max
        @@id
    end
end

a = Id.new
b = Id.new

puts "aの識別番号 : #{a.get_id}"
puts "bの識別番号 : #{b.get_id}"

puts "最後に与えた識別番号 : #{Id.get_max_id}"
puts "最後に与えた識別番号 : #{a.get_max}"
puts "最後に与えた識別番号 : #{b.get_max}"