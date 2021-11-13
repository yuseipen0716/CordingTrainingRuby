# 9-4の日付クラスVer.1を以下のように改良せよ。
# ・引数を受け取らないコンストラクタによるインスタンスの生成時は、西暦1年1月1日で初期化するのではなく、プログラム実行時の日付で初期化する。
# ・引数を受け取るコンストラクタに不正な値が指定された場合は、適当な値に調整する。（たとえば、13月が指定された場合は12月とする/9月31日と指定された場合は9月30日とする。）
# さらに、以下に示すに示すメソッドを追加すること
# ある年が閏年であるかどうかを判定するクラスメソッド、日付が属する年が閏年であるかどうかを判断するメソッド、年内での経過日数（その年の元旦から数えて何日めであるか）を求めるメソッド、
# 年内の残りの日数を求めるメソッド、他の日付との前後関係（より前の日付か/同じ日付か/より後ろの日付か）を判定するインスタンスメソッド、二つの日付の前後関係を判定するクラスメソッド、
# 日付を一つ後ろに進めるメソッド（日付が2012年12月31日であれば、2013年1月1日に更新する）、次の日の日付を返却するメソッド、日付を一つ前に戻すメソッド、前の日の日付を返却するメソッド、
# 日付をn日後ろに進めるメソッド、n日後の日付を返却するメソッド、日付をn日前に戻すメソッド、n日前の日付を返却するメソッドetc…

require 'date'
# class Dayは年月日それぞれに1を初期値として設定
class Day
    attr_accessor :year, :month, :date
    # 平年と閏年の各月の日数を格納した配列。
    @@normal_year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    @@leap_year = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    def initialize
        # 本日の日付で初期化
        @year = Date.today.year
        @month = Date.today.month
        @date = Date.today.day
    end

    # === y年m月d日の曜日を求める ===
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

    # === ある年が閏年かどうかを調べる
    # def leap?(year)

    # end

    # === 年月日と曜日を表示する ===
    def show
        "#{@year.to_s.rjust(4, "0")}年#{@month.to_s.rjust(2, "0")}月#{@date.to_s.rjust(2, "0")}日(#{self.day_of_week})"
    end

    # === インスタンス同士の等価性を調べる ===
    def equal_to(d)
        if d.year == @year && d.month == @month && d.date == @date
            true
        else
            false
        end
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
        # 月が1-12でない場合の調整。
        if month < 1
            @month = 1
        elsif month > 12
            @month = 12
        else
            @month = month
        end
        @date = 1
    end
end

# 年月日全ての数値を引数として受け取るDay_YMDクラス
class Day_YMD < Day
    def initialize(year, month, date)
        @year = year
        # ===月が1-12でない場合の調整 ===
        if month < 1
            @month = 1
        elsif month > 12
            @month = 12
        else
            @month = month
        end
        # === 32日とかで初期化しようとした場合の調整 ===
        # Dateクラスのleap?メソッドを使用して閏年かどうかの評価をする。スーパークラスであるDayクラスのクラス変数、@@normal_year, @@leap_yearを利用して渡された日付が妥当か評価。妥当でない場合は調整。
        if Date.leap?(year)
            # 閏年なら
            if date > @@leap_year[month - 1]
                # 月の最後の日よりも大きな日付が設定されているので、その月の末日に調整する。
                @date = @@leap_year[month - 1]
            elsif date < 1
                # 設定された日付が1より小さい場合は1に調整。
                @date = 1
            else
                # 設定された日付が妥当であれば、そのままインスタンス変数に代入。
                @date = date
            end
        else
            #平年なら
            if date > @@normal_year[month - 1]
                # 月の最後の日よりも大きな日付が設定されているので、その月の末日に調整する。
                @date = @@normal_year[month - 1]
            elsif date < 1
                # 設定された日付が1より小さい場合は1に調整。
                @date = 1
            else
                # 設定された日付が妥当であれば、そのままインスタンス変数に代入。
                @date = date
            end
        end
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

# leap = Day_YMD.new(2021, 2, 30)
# puts "#{leap.show}"