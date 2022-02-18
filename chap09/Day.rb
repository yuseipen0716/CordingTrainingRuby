# class Dayは年月日それぞれに1を初期値として設定
class Day
    attr_accessor :year, :month, :date
    def initialize
        @year = 1
        @month = 1
        @date = 1
    end
    # y年m月d日の曜日を求める。なお、1月と2月は前年の13月、14月として計算する。ツェラーの公式を利用
    def day_of_week
        d_o_w = ['日', '月', '火', '水', '木', '金', '土']
        if @month == 1 || @month == 2
            @year -= 1
            @month += 12
        end
        @year = year
        @month = month
        @date = date
        h = (year + year / 4 - year / 100 + year / 400 + (13 * month + 8) / 5 + date) % 7
        if @month > 12
            @month -=12
            @year += 1
        end
        d_o_w[h]
    end
    # 年月日と曜日を表示するメソッド。数値は年は4桁の右詰、月日は2桁の右詰として空白部分は'0'で埋める
    def show
        "#{@year.to_s.rjust(4, "0")}年#{@month.to_s.rjust(2, "0")}月#{@date.to_s.rjust(2, "0")}日(#{self.day_of_week})"
    end
    # インスタンス同士の等価性を調べるメソッド。object_idではなく、年月日の数値で評価する
    def equal_to(d)
        if d.year == @year && d.month == @month && d.date == @date
            true
        else
            false
        end
    end
    def set(y, m, d)
        @year = y
        @month = m
        @date = d
    end
end

# 年の数値だけ引数として受け取るDay_Yクラス
class Day_Y < Day
    def initialize(year)
        @year = year
        @month = 1
        @date = 1
    end
end

# 年月の数値を引数として受け取るDay_YMクラス
class Day_YM < Day
    def initialize(year, month)
        @year = year
        @month = month
        @date = 1
    end
end

# 年月日全ての数値を引数として受け取るDay_YMDクラス
class Day_YMD < Day
    def initialize(year, month, date)
        @year = year
        @month = month
        @date = date
    end
end

# 既にあるインスタンスを引数として受け取るDay_augクラス
class Day_aug < Day
    def initialize(d)
        @year = d.year
        @month = d.month
        @date = d.date
    end
end
