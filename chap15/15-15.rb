# コマンドライン引数で指定された月のカレンダーを表示するプログラムを作成せよ。コマンドラインから年のみが与えられた場合は、その年の1月から12月までのカレンダーを表示して、年と月が与えられた場合は
# その月のカレンダーを表示して、年も月も与えられなかった場合は現在の月のカレンダーを表示すること。

require 'date'

class Calender
    # 平年と閏年の各月の日数を格納した配列。
    @@normal_year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    @@leap_year = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    attr_accessor :year, :month, :date
    def initialize
        @year = Date.today.year
        @month = Date.today.month
        @day = Date.today.day
    end

    # === y年m月d日の曜日を求める ===
    def day_of_week(y, m, d)
        if m == 1 || m == 2
            y -= 1
            m += 12
        end
        (y + y / 4 - y / 100 + y / 400 + (13 * m + 8) / 5 + d) % 7
    end

    def leap?(y)
        if y % 4 == 0 && y % 100 != 0 || y % 400 == 0
            return true
        else
            return false
        end
    end

    # === y年m月の日数 ===
    def month_day(y, m)
        if leap?(y)
            @@leap_year[m-1]
        else
            @@normal_year[m-1]
        end
    end

    # === カレンダー表示のための準備 ===
    def put_calender
        # y年m月1日の曜日
        first_day_of_week = day_of_week(@year, @month, 1)

        # y年m月の日数
        month_day_ym = month_day(@year, @month)

        puts "#{@year}年#{@month}月のカレンダー"

        puts ' 日 月 火 水 木 金 土 '
        puts '---------------------'

        # 月の初日の曜日が正しく表示できるよう、1日の左にスペースを入れる。
        print "#{'   ' * first_day_of_week}"

        (1..month_day_ym).each do |i|
            printf("%3d", i)
            print "\n" if day_of_week(@year, @month, i) == 6 || i == month_day_ym
        end
    end
end

new_day = Calender.new
new_day.put_calender
