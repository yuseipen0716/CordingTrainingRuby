# おみくじプログラムを作成せよ。今日の日付と、大吉・吉・中吉・小吉・凶のいずれかの運勢を表示すること。

# 実行例
# 今日は2021年11月20日です。
# 今日の運勢は中吉です。

# Javaでいうところのパッケージ、RubyのModuleにあたるのかな、と思ったのでModuleを使ってみた。今回はModuleのinclude,extendを利用してみた。

require 'date'
module Today
    def call_today
        puts "今日は#{Date.today.year}年#{Date.today.month}月#{Date.today.day}日です。"
    end
end
module Random_num
    def random(a)
        rand(0..a-1)
    end
end

class Omikuji1
    # 今回はOmikuji1クラスの特異メソッドとしてfortune_todayを定義し、その中で上で定義したmodule内のメソッドを使用したかったので、extendした。
    extend Random_num
    extend Today

    class << self
        def fortune_today
            # 以下2行はextendしたmoduleのメソッドを使用。
            call_today
            num = random(10)
            case num
            when 0
                fortune = "大吉"
            when 1..3
                fortune = "吉"
            when 4..6
                fortune = "中吉"
            when 7..8
                fortune = "小吉"
            when 9
                fortune = "凶"
            end
            puts "今日の運勢は#{fortune}です。"
        end
    end
end

Omikuji1.fortune_today