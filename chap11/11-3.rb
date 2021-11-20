# yyyy年mm月dd日に実行すると、「今日はyyyy年mm月dd日です。」と一度だけ表示して、インスタンスを生成する度に各インスタンスにyyyymmdd1, yyyymmdd2, ・・・の識別番号を与える連番クラスDateIdを作成せよ。
# （10-3 p.306のクラスIdを改変して作成すると良い。）なお、クラスの所属するパッケージ名はidとし、クラスDataIdをテストするためのプログラムDataIdTesterは、無名パッケージに所属するクラスすること。

require 'date'

module Id
    class DataId
        # yyyymmdd1のようなIDを生成するためにクラス変数を使用。
        @@id = 0
        def initialize
            # 一番初めに実行した時、つまり@@id == 0の時にprivateメソッドのlaunchを実行する。
            launch if @@id == 0
            @@id += 1
            @id = (Date.today.year.to_s + Date.today.month.to_s + Date.today.day.to_s) + @@id.to_s
        end
    
        def get_id
            @id
        end
    
        private
        def launch
            puts "今日は#{Date.today.year}年#{Date.today.month}月#{Date.today.day}日です。"
        end
    end
end

class DataIdTester
    def self.data_id_test
        a = Id::DataId.new
        b = Id::DataId.new
        c = Id::DataId.new

        puts "aの識別番号 : #{a.get_id}"
        puts "bの識別番号 : #{b.get_id}"
        puts "cの識別番号 : #{c.get_id}"
    end
end
DataIdTester.data_id_test


