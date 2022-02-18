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
    # クラスメソッド
    def self.leap?(year)
        if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
            true
        else
            false
        end
    end
    # インスタンスメソッド
    def leap?
        if self.year % 4 == 0 && year % 100 != 0 || year % 400 == 0
            true
        else
            false
        end
    end

    # === 年内での経過日数 ===
    # 処理の流れメモ dateクラスのメソッドを利用してもいいけど、もし自分で書くなら、0..month-2でeachを回して前月分までの日数の合計を出して、今月分は1日から数えた経過日数を出して足し合わせるようにするか。
    def elapsed_days
        # 当月分の日付を初期値にして変数elapsedを定義
        elapsed = @date
        # 閏年かどうかを評価して、前月分までの合計日数をelapsedに加える。
        if self.leap?
            (0..@month-2).each do |i|
                elapsed += @@leap_year[i]
            end
        else
            (0..@month-2).each do |i|
                elapsed += @@normal_year[i]
            end
        end
        elapsed
    end

    # === 年内での残り日数 ===
    # 処理の流れ elapsed_daysと同じような感じ。当月の残り日数＋来月〜12月までの日数を足し合わせる
    def remaining_days
        if self.leap?
            remaining = @@leap_year[@month-1] - @date
            (@month..11).each do |i|
                remaining += @@leap_year[i]
            end
        else
            remaining = @@normal_year[@month-1] - @date
            (@month..11).each do |i|
                remaining += @@normal_year[i]
            end
        end
        remaining
    end

    # === 日付の前後関係（インスタンスメソッド) ===
    # 処理の流れ yearが等しいか、dの方が大きいか小さいかを評価。等しい場合はmonthの大小を評価し、monthも等しい場合はdateの大小を評価する。
    def compare_to(d)
        if @year > d.year
            puts "#{self.show}の方が後"
        elsif @year == d.year
            if @month > d.month
                puts "#{self.show}の方が後"
            elsif @month == d.month
                if @date > d.date
                    puts "#{self.show}の方が後"
                elsif @date == d.date
                    puts '同じ日付です。'
                else
                    puts "#{self.show}の方が前"
                end
            else
                puts "#{self.show}の方が前"
            end
        else
            puts "#{self.show}の方が前"
        end
    end

    # === 日付の前後関係（クラスメソッド) ===
    def self.compare(d1, d2)
        if d1.year > d2.year
            puts "#{d1.show}の方が後"
        elsif d1.year == d2.year
            if d1.month > d2.month
                puts "#{d1.show}の方が後"
            elsif d1.month == d2.month
                if d1.date > d2.date
                    puts "#{d1.show}の方が後"
                elsif d1.date == d2.date
                    puts '同じ日付です。'
                else
                    puts "#{d1.show}の方が前"
                end
            else
                puts "#{d1.show}の方が前"
            end
        else
            puts "#{d1.show}の方が前"
        end
    end

    # === 日付を1つ後へずらす ===
    # 処理の流れ@date+1する。@dateがその月の末日を超えてしまうようなら@month+1する。@month > 12 となってしまうのであれば、@year += 1
    # かなり冗長な記述になってしまった気がする。リファクタリングの余地、ありそう。
    def succeed_1
        # まずは閏年かどうかの評価。
        if self.leap?
            # dateを1増やしても、その月の末日を超えなければ、@dateに1加えたものをdateという変数に格納。超える場合は以下の処理へ。そのほかのmonth,yearはそのまま@month,@yearを使用。
            #（後で、これらの変数を使用して”翌日”インスタンスを生成したい。）
            if @date + 1 < @@leap_year[@month-1]
                @date += 1
                # @monthに1を加えても12を超えなければ、そのまま@monthに1を加え、monthに格納。上の処理で、dateは末日を超えて、月を繰越しているので、dateは1
            elsif @month + 1 < 12
                @date = 1
                @month += 1
                # 上のmonthの処理で、@month + 1が12を超えてしまうのであれば、翌年の1月に繰越し。yearに1を加える。
            else 
                @date = 1
                @month = 1
                @year += 1
            end
        else
            if @date + 1 < @@normal_year[@month-1]
                @date += 1
            elsif @month + 1 < 12
                @date = 1
                @month += 1
            else 
                @date = 1
                @month = 1
                @year += 1
            end
        end
    end
    # === 日付を1つ前へずらす ===
    # 処理の流れ@date-1する。@date < 1なら@month-1する。@month < 1 となってしまうのであれば、@year -= 1
    def precede_1
        # まずは閏年かどうかの評価。
        if self.leap?
            # dateを1減らしても1日より小さくならないなら、@dateから1減らしたものをdateという変数に格納。超える場合は以下の処理へ。そのほかのmonth,yearはそのまま@month,@yearを使用。
            if @date - 1 > 1
                @date -= 1
                # @month-1しても1より小さくならなければ、そのまま@monthから1を引き、monthに格納。上の処理で、dateは1日より小さくなり、月を巻き戻しているので、dateは前月の末日とする。
            elsif @month - 1 > 1
                @date = @@leap_year[@month-2]
                @month -= 1
                # 上のmonthの処理で、@month < 1となるのであれば、前年の12月に巻き戻し。yearから1を引く。
            else 
                @date = @@leap_year[11]
                @month = 12
                @year -= 1
            end
        else
            if @date - 1 > 1
                @date -= 1
            elsif @month - 1 > 1
                @date = @@normal_year[@month-2]
                @month -= 1
            else 
                @date = @@normal_year[11]
                @month = 12
                @year -= 1
            end
        end
    end

    # === 日付をn日後へずらす ===
    # 公開メソッドを使用
    def succeed(n)
        next_day = Date.new(@year, @month, @date).next_day(n)
        @year = next_day.year
        @month = next_day.month
        @date = next_day.day
    end

    # === 日付をn日前へずらす ===
    # 公開メソッドを使用
    def precede(n)
        prev_day = Date.new(@year, @month, @date).prev_day(n)
        @year = prev_day.year
        @month = prev_day.month
        @date = prev_day.day
    end

    # === n日後の日付を表示 ===
    def succeeding(n)
        next_day = Date.new(@year, @month, @date).next_day(n)
        next_n_day = Day_YMD.new(next_day.year, next_day.month, next_day.day)
    end

    # === n日前の日付を表示 ===
    def preceding(n)
        prev_day = Date.new(@year, @month, @date).prev_day(n)
        prev_n_day = Day_YMD.new(prev_day.year, prev_day.month, prev_day.day)
    end


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
            if date > @@leap_year[@month - 1]
                # 月の最後の日よりも大きな日付が設定されているので、その月の末日に調整する。
                @date = @@leap_year[@month - 1]
            elsif date < 1
                # 設定された日付が1より小さい場合は1に調整。
                @date = 1
            else
                # 設定された日付が妥当であれば、そのままインスタンス変数に代入。
                @date = date
            end
        else
            #平年なら
            if date > @@normal_year[@month - 1]
                # 月の最後の日よりも大きな日付が設定されているので、その月の末日に調整する。
                @date = @@normal_year[@month - 1]
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


# 以上のクラスの利用例

# 実行例
# 日付を入力せよ。
# 年 : 2017
# 月 : 10
# 日 : 15 
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 1
# 2017年10月15日(日)に関する情報
# 閏年ではない。
# 年内経過日数 : 288
# 年内残り日数 : 77
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 2
# [1]年月日を変更 [2]年を変更
# [3]月を変更 [4]日を変更
# [5]1日進める [6]1日戻す
# [7]n日進める [8]n日戻す : 7
# 何日 : 50
# 2017年12月04日(月)に更新されたました。
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 3
# 比較対象の日付を入力せよ。
# 年 : 2001
# 月 : 1
# 日 : 1
# 2017年12月04日(月)の方が後
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 4
# [1]翌日 [2]前日 [3]n日後 [4]n日前 : 1
# それは2017年12月05日(火)です。
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 4
# [1]翌日 [2]前日 [3]n日後 [4]n日前 : 4  
# 何日 : 100
# それは2017年08月26日(土)です。
# [1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較
# [4]前後に日付を求める [5]終了 : 5


# === 日付に関する情報を表示 ===
def display(day)
    puts "#{day.show}に関する情報"
    if day.leap?
        puts '閏年である。'
    else
        puts '閏年ではない。'
    end
    puts "年内経過日数 : #{day.elapsed_days}"
    puts "年内残り日数 : #{day.remaining_days}"
end

# === 日付を変更 ===
def change(day)
    print "[1]年月日を変更 [2]年を変更\n[3]月を変更 [4]日を変更\n[5]1日進める [6]1日戻す\n[7]n日進める [8]n日戻す : "
    change = gets.chomp.to_i

    case change
    when 1 
        print "年 : "
        day.year = gets.chomp.to_i
        print "月 : "
        day.month = gets.chomp.to_i
        print "日 : "
        day.date = gets.chomp.to_i
    when 2
        print "年 : "
        day.year = gets.chomp.to_i
    when 3
        print "月 : "
        day.month = gets.chomp.to_i
    when 4
        print "日 : "
        day.date = gets.chomp.to_i
    when 5
        day.succeed_1
    when 6
        day.precede_1
    when 7
        print "何日 : "
        n = gets.chomp.to_i
        day.succeed(n)
    else
        print "何日 : "
        n = gets.chomp.to_i
        day.succeed(n)
    end
    puts "#{day.show}に更新されたました。"
end

# === 他の日付との比較 ===
def compare_to(day)
    puts '比較対象の日付を入力せよ。'
    print "年 : "
    y = gets.chomp.to_i
    print "月 : "
    m = gets.chomp.to_i
    print "日 : "
    d = gets.chomp.to_i

    day_for_compare = Day_YMD.new(y, m, d)

    Day.compare(day, day_for_compare)
end

# === 前後の日付を求める ===
def before_after(day)
    print "[1]翌日 [2]前日 [3]n日後 [4]n日前 : "
    menu = gets.chomp.to_i
    
    case menu
    when 1
        puts "それは#{day.succeeding(1).show}です。"
    when 2
        puts "それは#{day.preceding(1).show}です。"
    when 3
        print "何日 : "
        n = gets.chomp.to_i
        puts "それは#{day.succeeding(n).show}です。"
    else
        print "何日 : "
        n = gets.chomp.to_i
        puts "それは#{day.preceding(n).show}です。"
    end
end


puts '日付を入力せよ。'
print "年 : "
y = gets.chomp.to_i
print "月 : "
m = gets.chomp.to_i
print "日 : "
d = gets.chomp.to_i

day = Day_YMD.new(y, m, d)

menu = nil
until menu == 5
    print "[1]日付に関する情報を表示 [2]日付を変更 [3]他の日付との比較\n[4]前後に日付を求める [5]終了 : " 
    menu = gets.chomp.to_i
    case menu
    when 1
        display(day)
    when 2
        change(day)
    when 3
        compare_to(day)
    when 4
        before_after(day)
    end
end
