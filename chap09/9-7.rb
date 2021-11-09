# 開始日と終了日とから構成される<期間>を表すクラスPeriodを作成せよ。フィールドは以下のように。コンストラクタやメソッドを自由に定義すること。
# class Period 
#     private Day from
#     private Day to
# end

# 実行結果
# 明治 = {1868年01月25日(土)〜1912年07月30日(火)}
# 大正 = {1912年07月30日(火)〜1926年12月25日(土)}
# 昭和 = {1926年12月25日(土)〜1989年01月07日(土)}

# Dayクラスのサブクラス、Day_YMDクラスを使用して実装。フィールドは上記のように指定があるので、値の書き換えができないようにして実装。
require './chap09/Day'

class Period
    attr_reader :from, :to
    def initialize(from, to)
        @from = from
        @to = to
    end
end

# 実行結果で示されているように表示できるよう記述。
meiji = Period.new(Day_YMD.new(1868, 1, 25), Day_YMD.new(1912, 7, 30))
puts "明治 = {#{meiji.from.show}〜#{meiji.to.show}}"

taisho = Period.new(Day_YMD.new(1912, 7, 30), Day_YMD.new(1926, 12, 25))
puts "大正 = {#{taisho.from.show}〜#{taisho.to.show}}"

showa = Period.new(Day_YMD.new(1926, 12, 25), Day_YMD.new(1989, 1, 7))
puts "昭和 = {#{showa.from.show}〜#{showa.to.show}}"
