# 各行に1文字ずつ自分の名前を表示するプログラムを作成せよ

# 柴
# 田
# 望
# 洋

# puts "柴\n田\n望\n洋"  こんな感じでできると思うけど、別の方法も考える。

def name_split(name)
    # 文字列全体を1文字ずつに分割してjoinで改行文字を挟んでで連結
    puts name.split(//).join("\n")
end

name =  '柴田望洋'

name_split(name)
