# 「初めてのRubyプログラム。」と「画面に出力しています。」を、開業することなく連続して表示するプログラムを作成せよ。

def hello_in_one_line
    message1 =  '初めてのRubyプログラム。'
    message2 =  '画面に出力しています。'
    message1 + message2
end

puts hello_in_one_line

# 普通に一行で、puts '初めてのRubyプログラム。画面に出力しています。'という書き方でもいいのだろうか。

def print_hello
    print '初めてのRubyプログラム。'
    print '画面に出力しています。'
end

puts print_hello

# printメソッドは改行を加えず出力するため、このように書いても一行で出力できた。