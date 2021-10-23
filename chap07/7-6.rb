# 引数mで指定された月の季節を表示するメソッドprintSeasonを表示せよ。
# mが3, 4, 5であれば「春」、6. 7, 8であれば「夏」、9. 10. 11であれば「秋」、12, 1, 2であれば「冬」と表示し、それ以外の値であれば何も表示しないこと。

# 実行例
# 何月ですか(1〜12) : 4
# その月の季節は春です。

def printSeason(m)
    case m
    when 3..5
        puts 'その季節は春です。'
    when 6..8
        puts 'その季節は夏です、'
    when 9..11
        puts 'その季節は秋です。'
    when 1,2,12
        puts 'その季節は冬です、'
    else
    end
end

print "何月ですか(1〜12) : "
m = gets.chomp.to_i

printSeason(m)