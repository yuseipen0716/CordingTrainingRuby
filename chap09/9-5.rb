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
        @no.to_s
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

d = Day_YMD.new(2010, 10, 15)
suzuki = Account.new('鈴木一郎', 125768, 100, d)

p = suzuki.get_open_day
puts "口座開設日 : #{p.show}"

p.set(1999, 12, 31)

q = suzuki.get_open_day
puts "口座開設日 : #{q.show}"