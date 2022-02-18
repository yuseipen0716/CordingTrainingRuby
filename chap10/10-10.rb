# インスタンスが生成されるたびに「明解銀行での口座開設ありがとうございます。」と表示するように、問題9-5の銀行口座クラスAccountを変更せよ。表示はインスタンス初期化子で行うこと。

# 実行例
# 開設口座数 : 2
# [0]・・・簡易 [1]・・・詳細 : 0
# 口座情報を入力せよ。
# 名義 : 柴田望洋
# 番号 : 123456
# 明解銀行での口座開設ありがとうございます。
# 口座基本情報 : {柴田望洋, 123456, 0}
# 識別番号 : 1
# 開設日 : 2021年11月16日(火)
# [0]・・・簡易 [1]・・・詳細 : 1
# 口座情報を入力せよ。
# 名義 : 宮本武蔵
# 番号 : 654321
# 残高 : 3000
# 開設年 : 2018
# 開設月 : 3
# 開設日 : 5
# 明解銀行での口座開設ありがとうございます。
# 口座基本情報 : {宮本武蔵, 654321, 3000}
# 識別番号 : 2
# 開設日 : 2018年03月05日(月)

require './chap09/Day'
require 'date'

class Account
    @@counter = 0
    def initialize(name, no, balance, open_day)
        @name = name
        @no = no
        @balance = balance
        @open_day = open_day
        @@counter += 1
        puts '明解銀行での口座開設ありがとうございます。'
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
        @open_day
    end
    def get_counter
        @@counter
    end

    def deposit(a)
        @balance += a
    end
    def withdraw(b)
        @balance -= b
    end
end

# nameとnoだけで初期化するためのクラス
class Account_simplicity < Account
    def initialize(name, no)
        @name = name
        @no = no
        # 残高の初期値は0に。
        @balance = 0
        # chapter09/Dayのクラスで定義してあるshowメソッドを使用したいので、Dateクラスで本日を取得したものを素材にしてDay_YMDクラスで初期化している。
        @open_day = Day_YMD.new(Date.today.year, Date.today.month, Date.today.day)
        # 識別番号counterをインクリメント
        @@counter += 1
        puts '明解銀行での口座開設ありがとうございます。'
    end
end

print "開設口座数 : "
num = gets.chomp.to_i
accounts = Array.new(num)

(0..num-1).each do |i|
    print "[0]・・・簡易 [1]・・・詳細 : "
    choise = gets.chomp.to_i
    return if choise != 1

    puts '口座情報を入力せよ。'
    print "名義 : "
    name = gets.chomp
    print "番号 : "
    no = gets.chomp
    # ０を選択した場合にはこの時点でインスタンスを生成。
    if choise == 0
        accounts[i] = Account_simplicity.new(name, no)
    else
        print "残高 : "
        balance = gets.chomp.to_i
        print "開設年 : "
        year = gets.chomp.to_i
        print "開設月 : "
        month = gets.chomp.to_i
        print "開設日 : "
        day = gets.chomp.to_i
        accounts[i] = Account.new(name, no, balance, Day_YMD.new(year, month, day))
    end
    puts "口座基本情報 : {#{accounts[i].get_name}, #{accounts[i].get_no}, #{accounts[i].get_balance}}"
    puts "識別番号 : #{accounts[i].get_counter}"
    puts "開設日 : #{accounts[i].get_open_day.show}"
end

