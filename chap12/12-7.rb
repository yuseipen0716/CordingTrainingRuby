# 以下に示すTimeAccountは問題9-5に示した銀行口座クラスVer.1から派生した定期預金付き銀行口座クラスである。銀行口座クラス型変数a, bの普通預金と定期預金残高の合計額を比較した結果を返却する
# メソッドcomp_balance（Account a, Account b)を作成せよ。
# 合計額を比較して、aのほうが多ければ1、等しければ0、bのほうが多ければ-1を返却すること。もしaやbの参照先が、定期預金を持たないAccount型のインスタンスをであれば、普通預金の金額を比較の対象とすること。

# 実行例
# 足立幸一さんと仲田真二さんの預金残高の比較結果です。
# 仲田真二さんのほうが預金残高が多い。

class Account
    def initialize(name, no, balance)
        @name = name
        @no = no
        @balance = balance
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

    def deposit(a)
        @balance += a
    end
    def withdraw(b)
        @balance -= b
    end
end

class TimeAccount < Account
    def initialize(name, no, balancen, time_balance)
        super(name, no, balancen)
        @time_balance = time_balance
    end

    # 定期預金残高を調べるメソッド
    def get_time_balance
        @time_balance
    end

    # 定期預金を解約して全額を普通預金に移す。
    def cancel
        self.deposit(@time_balance)
        @time_balance = 0
    end
end

class AccountCompare
    # 解説ではinstanceof演算子を利用しているが、Rubyではis_a?(class_name)メソッドを使うとクラスを判定できるので、それを利用してみることにした。
    # はじめ、以下の条件式をis_a?(Account)としており、比較の対象がスーパークラスになっていたので、全パターンでtrueを返してしまっていた。TimeAcountかどうかを調べるようにして解決。
    class << self
        def comp_balance(a, b)
            if a.is_a?(TimeAccount)
                # aのクラス型変数がTimeAccountクラスであるかどうか調べてtureならtotal_balanceは預金残高と定期預金残高を足したものとする。
                total_balance_a = a.get_balance + a.get_time_balance
            else
                total_balance_a = a.get_balance
            end
            
            if b.is_a?(TimeAccount)
                total_balance_b = b.get_balance + b.get_time_balance
            else
                total_balance_b = b.get_balance
            end

            if total_balance_a > total_balance_b
                switch = 1
            elsif total_balance_a == total_balance_b
                switch = 0
            else
                switch = -1
            end

            case switch
            when 1
                puts "#{a.get_name}さんのほうが預金残高が多い。"
            when 0
                puts '二人の預金残高は同じ。'
            when -1
                puts "#{b.get_name}さんのほうが預金残高が多い。"
            end
        end
        # 動作テスト用
        # def get_total_balance(a, b)
        #     if a.is_a?(TimeAccount)
        #         total_balance_a = a.get_balance + a.get_time_balance
        #     else
        #         total_balance_a = a.get_balance
        #     end
            
        #     if b.is_a?(TimeAccount)
        #         total_balance_b = b.get_balance + b.get_time_balance
        #     else
        #         total_balance_b = b.get_balance
        #     end
        #     puts "#{a.get_name}の預金残高は#{total_balance_a}円、#{b.get_name}の預金残高は#{total_balance_b}円"
        # end
    end
end

a = Account.new('足立幸一', '123456', 500)
b = TimeAccount.new('仲田真二', '654321', 300, 400)

puts "#{a.get_name}さんと#{b.get_name}さんの預金残高の比較結果です。"
AccountCompare.comp_balance(a, b)
# 動作テスト用
# AccountCompare.get_total_balance(a, b)
# puts a.is_a?(TimeAccount)