# プログラム中の分の終末を示すセミコロン; が欠如しているとどうなるか。プログラムをコンパイルして検証せよ。

# Rubyだとプログラム中の終末をしめすセミコロンは使用しない？のでエラーにならない。endを抜けばエラーになります。(1-2.rb:10: syntax error, unexpected end-of-input, expecting `end')

def hello
    puts '初めてのRubyプログラム'
    puts '画面に出力しています。'


puts hello