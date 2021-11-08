# 以下に示す日付クラスを利用するプログラムを作成せよ。全てのコンストラクタの働きを確認できるようにすること。

# 問題に示されている日付クラスはコンストラクタが多重定義されており、Rubyでは同様に実装できないため、クラスの継承を扱うことにする。

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

# Dayクラスを利用してみる

# 実行例
# day1を入力せよ。
# 年 : 2017
# 月 : 5
# 日 : 25
# day1 = 2017年05月25日(木)
# day2をday1と同じ日付として作りました。
# day2 = 2017年05月25日(木)
# day1とday2は等しいです。
# 0001年01月01日(月)
# 2017年01月01日(日)
# 2017年10月01日(日)
# 2017年10月15日(日)
# a[0] = 0001年01月01日(月)
# a[1] = 0001年01月01日(月)
# a[2] = 0001年01月01日(月)

puts 'day1を入力せよ。'
print "年 : "
year = gets.chomp.to_i
print "月 : "
month = gets.chomp.to_i
print "日 : "
date = gets.chomp.to_i

day1 = Day_YMD.new(year, month, date)
puts "day1 = #{day1.show}"

puts 'day2をday1と同じ日付として作りました。'

day2 = Day_aug.new(day1)
puts "day2 = #{day2.show}"

if day2.equal_to(day1)
    puts 'day1とday2は等しいです。'
else
    puts 'day1とday2は等しくありません。'
end

d = Array.new(4)
d[0] = Day.new
d[1] = Day_Y.new(2017)
d[2] = Day_YM.new(2017, 10)
d[3] = Day_YMD.new(2017, 10, 15)

(0..3).each { |i| puts "#{d[i].show}"}

a = Array.new(3)
(0..2).each do |i|
    a[i] = Day.new
    puts "a[#{i}] = #{a[i].show}"
end