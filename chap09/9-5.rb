# 以下に示す銀行口座クラスに対して、口座開設日のフィールドとtoStringメソッドを追加せよ。
# ※コンストラクタを変更したり、口座開設日のゲッタ（口座開設日フィールドが参照する日付インスタンスのコピーを返す）などのメソッドを追加したりすること。
require './chap09/Day'

class Account
    @@open_day = nil
    def initialize(name, no, balance, open_day)
        @name = name
        @no = no
        @balance = balance
        @open_day = Day_aug.new(open_day)
        @@open_day = open_day
    end

    def get_name
        @name.to_s
    end
    def get_no
        @no
    end
    def get_balance
        @balance
    end
    def get_open_day
        # @open_dayがsetメソッドなどで書き換えられてしまうと、口座開設日が更新されてしまうため、クラス変数を利用してみた。
        @open_day = Day_aug.new(@@open_day)
    end

    def deposit(a)
        @balance += a
    end
    def withdraw(b)
        @balance -= b
    end
end

# 銀行口座クラスを利用してみる その1 口座開設日
d = Day_YMD.new(2010, 10, 15)
suzuki = Account.new('鈴木一郎', 125768, 100, d)

p = suzuki.get_open_day
puts "口座開設日 : #{p.show}"

p.set(1999, 12, 31)

q = suzuki.get_open_day
puts "口座開設日 : #{q.show}"

# 銀行口座クラスの利用例 その2
# 実行例
# 口座情報を入力せよ。
# 名義 : 柴田望洋 
# 番号 : 555555
# 残高 : 500
# 開設年 : 2001
# 開設月 : 11
# 開設日 : 18
# 口座基本情報 : { 柴田望洋, 555555, 500 }
# 開設日 : 2001年11月18日(日)

puts '口座情報を入力せよ。'
print "名義 : "
name = gets.chomp
print "番号 : "
no = gets.chomp.to_i
print "残高 : "
balance = gets.chomp.to_i
print "開設年 : "
year = gets.chomp.to_i
print "開設月 : "
month = gets.chomp.to_i
print "開設日 : "
date = gets.chomp.to_i

a = Account.new(name, no, balance,Day_YMD.new(year, month, date))

puts "口座基本情報 : { #{a.get_name}, #{a.get_no}, #{a.get_balance} }"

puts "開設日 : #{a.get_open_day.show}"
