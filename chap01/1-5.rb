# 各行に1文字ずつ自分の名前を表示するプログラムを作成せよ(苗字と名前の間は一文字あける)

# 柴
# 田

# 望
# 洋
#1-4の要領で。苗字と名前は分けてみる。
# def name_split(last_name)
#     # 文字列全体を1文字ずつに分割してjoinで改行文字を挟んでで連結
#     puts last_name.split(//).join("\n")
# end

# last_name =  '柴田'

# def name_split(first_name)
#     puts first_name.split(//).join("\n")
# end

# first_name = '望洋'

# puts name_split(last_name)
# # 最終行は改行してほしくないので
# print name_split(first_name)


# これでもいける
# puts "柴\n田\n\n望\n洋"


# 同名のメソッドを定義してしまっていたのでひとつにまとめて実装。
def name_split(name)
    puts name.split(//).join("\n")
end

puts name_split('柴田')
print name_split('望洋')